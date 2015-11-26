<?php

namespace Acme;

class Hello {
    
    private $message;
    
    public function __construct() {
        $this->message = "Hello world";
    }
    
    function getMessage() {
        return $this->message;
    }
}
