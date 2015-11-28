<?php

class BD {
    /**
     * [$basedatos nombre de la base de datos]
     * @var string
     */
    private $basedatos = 'gestionusuarios';
    /**
     * [$usuario nombre del usuario en la base de datos]
     * @var string
     */
    private $usuario = 'root';
    /**
     * [$contrasenya contraseña para entrar a la base de datos]
     * @var string
     */
    private $contrasenya = '';
    /**
     * [$equipo direccion del servidor ]
     * @var string
     */
    private $equipo = 'localhost';
    /**
     * [$bd variable estatica para conectarse a la misma clase]
     * @var null
     */
    protected static $bd = null;
    /**
     * [__construct establece la coneXion cuando se crea el objeto de la clase]
     */
    private function __construct() {
        try {
            self::$bd = new PDO("mysql:host=$this->equipo;dbname=$this->basedatos", $this->usuario, $this->contrasenya);
        } catch (PDOException $e) {
            echo "Connection Error: " . $e->getMessage();
            die();
        }
    }
    /**
     * [getConexion  metodo estatico para instanciar al objeto con la conexion]
     * @return [obj] [devuelve un objeto de la clase conexion ya conectado a la base de datos]
     */
    public static function getConexion() {
        if (!self::$bd) {
            new BD();
        }
        return self::$bd;
    }

}
