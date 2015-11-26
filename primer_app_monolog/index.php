
        <?php

        require 'vendor/autoload.php';
        
        use Acme\Hello;
        
        $log = new Monolog\Logger('logger');
        $log->pushHandler( new Monolog\Handler\StreamHandler('app.log',
                Monolog\Logger::WARNING));
        $log->addWarning("cuidado esto es un warning");
        
        
        $saludo = new Hello();
        if ($saludo) {
          echo $saludo->getMessage(); 
        } else {
          $log->addError("algun error ha ocurrido");  
        }
        
        
       