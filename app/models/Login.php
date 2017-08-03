<?php

class Index extends \Phalcon\Mvc\Model
{

   
    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $fldusername;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $fldpassword;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("ap");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'home';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return User[]|User
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return User
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
