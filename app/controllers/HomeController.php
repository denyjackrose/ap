<?php

class HomeController extends ControllerBase
{
	public function initialize() 
	{
		$this->tag->setTitle( "Home" );
		parent::initialize();
	}
	
    public function indexAction()
    {

    }

}

