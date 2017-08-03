<?php

class Agama extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var string
     * @Column(type="string", length=10, nullable=false)
     */
    public $agmid;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $agmnama;

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
        return 'Agama';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Agama[]|Agama|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Agama|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
