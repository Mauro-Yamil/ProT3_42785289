<?php
namespace App\Controllers; 
Use App\Models\usuario_Model;
use CodeIgniter\Controller;

class usuario_Controller extends Controller{

        public function __construct(){
            helper(['form', 'url']);
        }

        public function create() {
            $dato['titulo']='Registro';
            echo view('Front/head_view',$dato);
            echo view('Front/navbar_view');
            echo view('Back/usuario/registro');
            echo view('Front/footer_view');
        }

    public function formValidation() {
        $input = $this->validate([
            'nombre' => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'email' => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email]',
            'usuario' => 'required|min_length[3]',
            'pass'  => 'required|min_length[3]|max_length[10] '
        ],
        );
    
        $formModel = new usuario_Model();
        
        if (!$input) {
            $data['titulo']='registro';
            echo view('Front/head_view', $data);
            echo view('Front/navbar_view');
            echo view('Back/usuario/registro', ['validation' => $this->validator]); 
            echo view('Front/footer_view');

        } else {
            $formModel->save([
                'nombre' => $this->request->getVar('nombre'), 
                'apellido' => $this->request->getVar('apellido'), 
                'email' => $this->request->getVar('email'),
                'usuario' => $this->request->getVar('usuario'),
                'pass' => password_hash($this->request->getVar('pass'), PASSWORD_DEFAULT) 
            //password_hash() crea un nuevo hash de contraseña usando un algoritmo de hash de único sentido.
        ]);
        
        // Flashdata funciona solo en redirigir la función en el controlador en la vista de carga.
        session()->setFlashdata('success', 'Usuario registrado con exito');
        return $this->response->redirect('login');
        }
    }
}