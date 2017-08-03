<?php

class User extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=11, nullable=false)
     */
    public $id_user;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $fldfirstname;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $fldlastname;

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
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $fldinstalasi;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $fldpoli;

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
        return 'user';
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
