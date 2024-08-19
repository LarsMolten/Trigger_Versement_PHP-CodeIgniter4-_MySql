<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 *  Post Controller
 */
class Audit extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('crud');
	}

	public function index()
	{
		if($this->session->userdata['email'] != null) {

			$data['nbr_ajout'] = $this->db->where('type', 'Ajout Virement')->count_all_results('audit');
			$data['nbr_update'] = $this->db->where('type', 'Update Virement')->count_all_results('audit');
			$data['nbr_delete'] = $this->db->where('type', 'Suppression Virement')->count_all_results('audit');
			// var_dump($data); die;
			$this->load->view('audit/list', $data);			
		}  else{
			redirect('/');
		}
	}


	public function create()
	{
		$this->load->view('audit/create');
	}

}
