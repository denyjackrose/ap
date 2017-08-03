<?php

class UserController extends ControllerBase
{
	public function initialize() 
	{
		$this->tag->setTitle( "User Baru" );
		parent::initialize();
	}
	
    public function indexAction()
    {

    }
	
	public function registerAction()
    {
 
        $user = new User();
 
        $password = $this->request->getPost('txtpassword');
		$akses = 
 
        $user->fldfirstname = $this->request->getPost('txtnamadepan');
		$user->fldlastname = $this->request->getPost('txtnamabelakang');
		$user->fldusername = $this->request->getPost('txtusername');
		$user->fldpassword = $this->security->hash($password);
		$user->fldinstalasi = $this->request->getPost('cmbinstalasi');
		$user->fldpoli = $this->request->getPost('cmbpoli');
 
        if ( !$user->save() ) 
		{
			echo 0;
		}
		else
		{
			echo 1;
		}
    }
}

