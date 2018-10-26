<?php

class AjxResponse {

    public $CODE;
    public $MESSAGE;
    public $DATA;

    public function __construct($pCode, $pMsg, $pData) {
        $this->CODE = $pCode;
        $this->MESSAGE = $pMsg;
        $this->DATA = $pData;
    }

    
}
