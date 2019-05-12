<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ccrud extends CI_Controller {

  public function __construct(){
		parent::__construct();
		$this->load->model('Mdata');
		$this->load->helper('url');

	}

	public function index()
	{

    $this->load->model('Mdata');
    $data['lokomotif'] = $this->Mdata
           ->getLeft();
		$this->load->view('bebas', $data);
	}

  public function right()
	{

    $this->load->model('Mdata');
    $data['kursi'] = $this->Mdata
           ->getRight();
		$this->load->view('Vright', $data);
	}

  public function inner()
	{

    $this->load->model('Mdata');
    $data['lokomotif'] = $this->Mdata
           ->getInner();
		$this->load->view('Vinner', $data);
	}



}
