<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data['titulo']='pagina principal';
        echo view('Front/head_view',$data);
        echo view('Front/navbar_view');
        echo view('Front/principal');
        echo view('Front/footer_view');
    }
    public function quienes_somos()
    {
        $data['titulo']='quienes_somos';
        echo view('Front/head_view',$data);
        echo view('Front/navbar_view');
        echo view('Front/quienes_somos');
        echo view('Front/footer_view');
    }
    public function acerca_de()
    {
        $data['titulo']='acerca_de';
        echo view('Front/head_view',$data);
        echo view('Front/navbar_view');
        echo view('Front/acerca_de');
        echo view('Front/footer_view');
    }
    public function registro()
    {
        $data['titulo']='registro';
        echo view('Front/head_view',$data);
        echo view('Front/navbar_view');
        echo view('Back/usuario/registro');
        echo view('Front/footer_view');
    }
    public function login()
    {
        $data['titulo']='login';
        echo view('Front/head_view',$data);
        echo view('Front/navbar_view');
        echo view('Back/usuario/login');
        echo view('Front/footer_view');
    }

}
