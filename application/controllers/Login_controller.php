<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_controller extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *        http://example.com/index.php/welcome
     *    - or -
     *        http://example.com/index.php/welcome/index
     *    - or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */

    public function index()
    {
        $this->load->view('Login');
        $this->load->helper('url');
    }


    public function verifyLogin()
    {
        //get the posted values
        $username = $this->input->post("txt_username");
        $password = $this->input->post("txt_password");
        $this->load->model("Nycatimedbapi_model");
        $result = $this->Nycatimedbapi_model->dbGetUser($username,$password);


        if($result)
        {
            $roleName = $this->Nycatimedbapi_model->dbGetRName($username,$password);

            if ($roleName = 'Super Admin')
            {
                $this->load->view("SuperAdmin");
            }
        }
        else
        {
            print "Incorrect credentials";
        }




    }


}