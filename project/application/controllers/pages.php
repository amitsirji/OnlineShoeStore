<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pages extends CI_Controller {
	function __construct()
	{
		parent::__construct();	
	}

	public function view($page = 'home')
	{
		
		if ( ! file_exists('application/views/'.$page.'.php'))
		{
			// Whoops, we don't have a page for that!
			//show_404();
		}
		
		$this->load->view($page);		
	}
	

		
	
	
}
