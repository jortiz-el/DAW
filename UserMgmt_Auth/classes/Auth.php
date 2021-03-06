
<?php

class Auth {
    
    /**
     * [logout destruye la session]
     * @return [no return] [solo destruye sesion]
     */
    public function logout(){
        session_unset();
        session_destroy();
    }
    /**
     * [login estable la sesion del usuario]
     * @param  [string/obj] $usuario [puede recibir un objeto de la clase o un string]
     * @return [no return]
     */
    public function login($usuario) {
        $_SESSION['usuario'] = $usuario;
    }
   /**
    * [usuario funcion para obtener la session de usuario]
    * @return [obj/string] [devuelve la sesion del usuario]
    */
    public function usuario() {
        return $_SESSION['usuario'];
    }
    /**
     * [check funcion que verifica si hay una session usuario]
     * @return [boolean] [devuleve la sesion o false si no la hay]
     */
    public function check() {
        return (isset($_SESSION['usuario']));
    }
    
    public function __construct() {
    }
    /**
     * [getId metodo parta obtener el id ]
     * @return [int] [id autonumerico]
     */
    public function getId() {
        return $this->id;
    }
    /**
     * [getNomUsuario  metodo para obtener el nombre del usuario]
     * @return [string] [devuelve el nombre del usuario]
     */
    public function getNomUsuario() {
        return $this->nomUsuario;
    }
    /**
     * [setNomUsuario metodo para establecer el nombre del usuario]
     * @param [string] $nomUsuario [nombre del usuario]
     */
    public function setNomUsuario($nomUsuario) {
        $this->nomUsuario = $nomUsuario;
    }
    /**
     * [getClave metodo para obtener la clave del usuario]
     * @return [string] [devulve la clave del usuario]
     */
    public function getClave() {
        return $this->clave;
    }
    /**
     * [setClave metodo para establecer la clave del usuario]
     * @param [string] $clave [clave del usuario]
     */
    public function setClave($clave) {
        $this->clave = $clave;
    }
    /**
     * [persist] funcion para insertar en la base de datos en nombre y clave 
     * del usuario actual 
     * @return [noreturn] [esta funcion no devuelve nada]
     */
    public function persist() {
        $bd = BD::getConexion();
        $sqlInsertUsuario = "insert into usuarios (nomUsuario, clave) values (:nomUsuario, :clave)";
        $sthSqlInsertUsuario = $bd->prepare($sqlInsertUsuario);
        $result = $sthSqlInsertUsuario->execute([":nomUsuario" => $this->nomUsuario, ":clave" => $this->clave]);
        $this->id = (int) $bd->lastInsertId();
    }
}
