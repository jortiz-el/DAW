
<?php

require_once 'BD.php';

class Usuario {
    /**
     * @access protected
     * [$id]
     * @var [string] 
     */
    protected $id;
    /**
     * @access protected
     * [$inombre]
     * @var [string] 
     */
    protected $nombre;
    /**
     * @access protected
     * [$clave]
     * @var [string] 
     */
    protected $clave;
    /**
     *Obtener las credenciales de conexion
     *
     *@static getByCredencial
     * 
     * metodo estatico para obtener la conexion a la base de datos si el
     * usuario esta registrado en ella. si esta registarado devolvera
     * un objeto de la clase con sus atributos.
     * 
     * @param  [string] $nombre recogido en forulario
     * @param  [string] $clave recogido en formulario
     * @return [object] $usuarioObj devuelve un objeto de la clase usuario
     * si no devuelve boll False
     */
    public static function getByCredencial($nombre, $clave) {
        $bd = BD::getConexion();
        $sql = 'select * from usuarios where nombre=:nombre and clave=:clave';
        $sthSql = $bd->prepare($sql);
        $sthSql->execute([":nombre" => $nombre, ":clave" => $clave]);
        $sthSql->setFetchMode(PDO::FETCH_CLASS, 'Usuario');
        $usuarioObj = $sthSql->fetch();
        return $usuarioObj;
    }
    /**
     * funcion contsructora vacia
     */
    public function __construct() {
    }
    /**
     *get de Id
     * 
     * @return [int] obtiene el Id 
     */
    public function getId() {
        return $this->id;
    }
    /**
     *getter para obtener el nombre del usuario
     * 
     * @return [String] obtiene el nombre de usuario
     */
    public function getNombre() {
        return $this->nombre;
    }
    /**
     *setter para indicar el nombre de usuario
     * 
     * @param [type] $nombre da valor a nombre
     */
    public function setNombre($nombre) {
        $this->nombre = $nombre;
    }
    /**
     *funcion para obtener la clave del usuario
     * 
     * @return [String] $this->clave 
     */
    public function getClave() {
        return $this->clave;
    }
    /**
     *funcion setter para ingresar la clave
     * 
     * @param [string] $clave indicar la clave
     */
    public function setClave($clave) {
        $this->clave = $clave;
    }
    /**
     * funcion persist
     *
     * con esta funcion resgistramos un usuario nuevo en la aplicacion
     * @return [boolean] solo ejecuta una sentencia sql sin return
     */
    public function persist() {
        $bd = BD::getConexion();
        $sql = "insert into usuarios (nombre, clave) values (:nombre, :clave)";
        $sthSql = $bd->prepare($sqlInsertUsuario);
        $result = $sthSql->execute([":nombre" => $this->nombre, ":clave" => $this->clave]);
        $this->id = (int) $bd->lastInsertId();
    }
}
