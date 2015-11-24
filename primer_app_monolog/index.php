
        <?php

        use MonologLogger;
        use MonologHandlerStreamHandler;
        
        $log = new logger('logger');
        $log->info('solo tenemos el logger');
        $log->err('un error ha ocurrido');