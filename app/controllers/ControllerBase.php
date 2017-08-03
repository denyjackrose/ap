<?php

class ControllerBase extends \Phalcon\Mvc\Controller
{
	protected function initialize()
	{
		$this->tag->prependTitle("Aplous - ");
	}
}
