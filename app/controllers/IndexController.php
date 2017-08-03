<?php

class IndexController extends ControllerBase
{
	public function initialize() 
	{
		$this->tag->setTitle( "Login" );
		parent::initialize();
	}
	
    public function indexAction()
    {
	}
		 public function loginAction()
    {
 
       
		$user =  $this->request->getPost('user');
        $password = $this->request->getPost('txtpassword');
        $username = $this->request->getPost('txtusername');
		
		$akses = 
		$user->fldusername = $this->request->getPost($username);
		$user->fldpassword = $this->security->hash($password);

       
    }
}

