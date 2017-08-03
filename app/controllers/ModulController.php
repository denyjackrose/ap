<?php

class ModulController extends ControllerBase
{
	
	public function initialize() 
	{
		$this->tag->setTitle( "Modul" );
		parent::initialize();
	}

    public function indexAction()
    {
		$usr = Tmod::find();
		$this->view->datax=$usr;
		
		$user = Tmod::find();
		$this->view->data=$user;
    }
	
	public function newAction()
    {
		$user = Tmod::find();
		$this->view->data=$user;
	
    }

	public function saveAction()
	{
		$usr = new Tmod();
		$usr->modName = $this->request->getPost("modName");
		$usr->link = $this->request->getPost("link");
		$usr->icon = $this->request->getPost("icon");
		$usr->urutan = $this->request->getPost("urutan");
		$usr->aktif = $this->request->getPost("aktif");
		//$success = $usr->save($this->request->getPost(), array('modName', 'link', 'icon', 'urutan'));
		   
		if ( !$usr->save() ) {
			echo 0;
		}
		else
		{
			echo 1;
		}
	}
	
	public function viewAction($objectid)
    {
		$user = Tmod::find();
		$this->view->data=$user;
		
		$usr = Tmod::findFirstByobjectid($objectid);
		$this->view->objectid = $usr->objectid;
		$this->view->modName = $usr->modName;
		$this->view->icon = $usr->icon;
		$this->view->link = $usr->link;
		$this->view->urutan = $usr->urutan;
		$this->view->aktif = $usr->aktif;
    }
	
	public function updateAction()
	{
		$id = $this->request->getPost('oid');
		$find = Tmod::findFirstByobjectid($id);
		
		$find->modName = $this->request->getPost('modName');
		$find->icon = $this->request->getPost('icon');
		$find->link = $this->request->getPost('link');
		$find->urutan = $this->request->getPost('urutan');
		$find->aktif = $this->request->getPost('aktif');
		
		if ( !$find->save() ) {
			echo 0;
		}
		else
		{
			echo 1;
		}
	}
	
	public function deleteAction($objectid)
	{
		$user = Tmod::find();
		$this->view->data=$user;
		
		$usr = Tmod::findFirstByobjectid($objectid);
		   
		if (!$usr->delete())
		{
		   echo "<script>alert('Gagal Hapus Data');window.location.href='http://localhost/wpos/modul';</script>";
		}
		else
		{
		   echo "<script>alert('Berhasil Hapus Data');window.location.href='http://localhost/wpos/modul';</script>";
		}
	}

}

