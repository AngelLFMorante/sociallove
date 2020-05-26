<?php

namespace controller;

use \model\Orm;
use \model\OrmPerfil;

require_once("funciones.php");

class ApiController extends Controller
{
    //recibimos el email y con el email comprobamos el login si existe o tiene que registrarse.
    public function existeLogin($email)
    {

        header('Content-type: application/json');
        $loginExiste = (new Orm)->loginExistente($email);
        if ($loginExiste != null) {
            echo json_encode("existe");
        } else {
            echo json_encode("registro");
        }
    }
    //ver la descripcion del paquete elegido a la hora de efectuar pago.
    public function descripcionPagoElegido($id)
    {

        $descripcionPaquete = (new Orm)->obtenerPaquete($id);
        $data["titulo"] = $descripcionPaquete["nombre"];
        $data["precio"] = $descripcionPaquete["precio"];

        echo json_encode($data);
    }
    /* Hay que poner las notificaciones de la gente que ha visitado tu perfil */
    public function notificaciones()
    {
    }

    /***ALBERTO**/
    function apiComprobarLogin($login)
    {
        header('Content-type: application/json');
        $data["loginExiste"] = (new Orm)->existeLogin($login);
        echo json_encode($data);
    }

    function apiComprobarEmail($email)
    {
        header('Content-type: application/json');
        $data["emailExiste"] = (new Orm)->existeEmail($email);
        echo json_encode($data);
    }
    /* ******** */
    /* informar de la realizacion de la compra mediante pasarela */
    public function informa()
    {
        header('Content-type: application/json');

        $cod_pedido = $_REQUEST["cod_pedido"];
        $importe = $_REQUEST["importe"];
        $estado = $_REQUEST["estado"];
        $cod_operacion = $_REQUEST["cod_operacion"];

        (new Orm)->informacionPasarela($cod_pedido, $importe, $estado, $cod_operacion);

        if($estado == "ok"){
            $msg = "Servidor de la tienda informado del pago correcto.";
          }else if($estado == "nook"){
            $msg = "Servidor de la tienda informado de un problema de pago.";
          }else if($estado == "cancelado"){
            $msg = "Servidor de la tienda informado de que fue cancelado el pago por el usuario.";
          }

        echo json_encode($msg);
    }

    /* Recaptcha fetch */
    public function recaptcha($responseCaptcha)
    {
       
        header('Content-type: application/json'); 
        $secret = '6LdAh-kUAAAAAAMDdm1Lw-qYSF7OT2NXRXmi8sxQ';
        $captcha = $responseCaptcha; 
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$captcha");
        $arr = json_decode($response, TRUE); 
        var_dump($arr['success']);
        echo json_encode($arr['success']);
         
    }
    /*carlos*/
    public function hechizar($login)
    {
        $data = [];
        $data["estado"] = (new OrmPerfil)->hechizarODeshechizar($login, $_SESSION["login"]);
        $tuUsuario = (new OrmPerfil)->leHaHechizado($login, $_SESSION["login"]);
        $otroUsuario = (new OrmPerfil)->leHaHechizado($_SESSION["login"], $login);
        $data["hechizosContador"] = (new ApiController)->gastarHechizo();
        if ($tuUsuario && $otroUsuario) {
            $data["botonEstado"] = true;
        }
        echo json_encode($data);
    }

    public function gastarHechizo()
    {
        $hechizos = (new Orm)->contadorHechizos($_SESSION["login"]);
        if ($hechizos > 0) {
            (new OrmPerfil)->gastarHechizo($_SESSION["login"]);
        } else {
            return false;
        }
        $devolverhechizos = (new Orm)->contadorHechizos($_SESSION["login"]);
        return $devolverhechizos;
    }

    public function modificarDescripcion()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarDescripcion($datos, $_SESSION["login"]);
        $sacarDescripcion = (new OrmPerfil)->sacarDescripcion($_SESSION["login"]);
        echo json_encode($sacarDescripcion);
    }

    public function modificarLoQueBusco()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarLoQueBusco($datos, $_SESSION["login"]);
        $sacarDescripcion = (new OrmPerfil)->sacarLoQueBusco($_SESSION["login"]);
        echo json_encode($sacarDescripcion);
    }

    public function modificarProfesion()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarProfesion($datos, $_SESSION["login"]);
        $sacarProfesion = (new OrmPerfil)->sacarProfesion($_SESSION["login"]);
        echo json_encode($sacarProfesion);
    }

    public function modificarHobbies()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarHobbies($datos, $_SESSION["login"]);
        $sacarHobbies = (new OrmPerfil)->sacarHobbies($_SESSION["login"]);
        echo json_encode($sacarHobbies);
    }

    public function modificarRelacion()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
            case "relacionseria":
                $datos = "Relación seria";
                break;
            case "noche":
                $datos = "Rollo de una noche";
                break;
        }
        (new OrmPerfil)->guardarRelacion($datos, $_SESSION["login"]);
        $sacarRelacion = (new OrmPerfil)->sacarRelacion($_SESSION["login"]);
        echo json_encode($sacarRelacion);
    }

    public function modificarAlcohol()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
            case "nunca":
                $datos = "Nunca";
                break;
            case "aVeces":
                $datos = "De vez en cuando";
                break;
            case "bastante":
                $datos = "A menudo";
                break;
        }
        (new OrmPerfil)->guardarAlcohol($datos, $_SESSION["login"]);
        $sacarAlcohol = (new OrmPerfil)->sacarAlcohol($_SESSION["login"]);
        echo json_encode($sacarAlcohol);
    }

    public function modificarTabaco()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
            case "nunca":
                $datos = "Nunca";
                break;
            case "aVeces":
                $datos = "De vez en cuando";
                break;
            case "bastante":
                $datos = "A menudo";
                break;
        }
        (new OrmPerfil)->guardarTabaco($datos, $_SESSION["login"]);
        $sacarTabaco = (new OrmPerfil)->sacarTabaco($_SESSION["login"]);
        echo json_encode($sacarTabaco);
    }

    public function modificarEstilo()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
            case "fiestero":
                $datos = "Fiestero";
                break;
            case "casa":
                $datos = "Estar en casa";
                break;
            case "viajero":
                $datos = "Viajero por el mundo";
                break;
        }
        (new OrmPerfil)->guardarEstilo($datos, $_SESSION["login"]);
        $sacarEstilo = (new OrmPerfil)->sacarEstilo($_SESSION["login"]);
        echo json_encode($sacarEstilo);
    }

    public function modificarSigno()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
        }
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarSigno($datos, $_SESSION["login"]);
        $sacarSigno = (new OrmPerfil)->sacarSigno($_SESSION["login"]);
        echo json_encode($sacarSigno);
    }

    public function modificarComida()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
        }
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarComida($datos, $_SESSION["login"]);
        $sacarComida = (new OrmPerfil)->sacarComida($_SESSION["login"]);
        echo json_encode($sacarComida);
    }

    public function modificarDeportes()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
        }
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarDeportes($datos, $_SESSION["login"]);
        $sacarDeportes = (new OrmPerfil)->sacarDeportes($_SESSION["login"]);
        echo json_encode($sacarDeportes);
    }

    public function modificarMedidas()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarMedidas($datos, $_SESSION["login"]);
        $sacarMedidas = (new OrmPerfil)->sacarMedidas($_SESSION["login"]);
        echo json_encode($sacarMedidas);
    }

    public function modificarMusica()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        $datos = sanitizar($datos);
        (new OrmPerfil)->guardarMusica($datos, $_SESSION["login"]);
        $sacarMusica = (new OrmPerfil)->sacarMusica($_SESSION["login"]);
        echo json_encode($sacarMusica);
    }

    public function modificarTransporte()
    {
        $data = file_get_contents("php://input"); //Para recoger datos del body del fetch, su puta madre
        $datos = json_decode($data);
        switch ($datos) {
            case "noindicado":
                $datos = "No indicado";
                break;
            case "pie":
                $datos = "A pie";
                break;
            case "coche":
                $datos = "En coche";
                break;
            case "moto":
                $datos = "En moto";
                break;
            case "bici":
                $datos = "En bici";
                break;
            case "skate":
                $datos = "En skate";
                break;
        }
        (new OrmPerfil)->guardarTransporte($datos, $_SESSION["login"]);
        $sacarTransporte = (new OrmPerfil)->sacarTransporte($_SESSION["login"]);
        echo json_encode($sacarTransporte);
    }
    /* Eliminar la notificación del correo una vez se haya entrado */
    public function notifyCorreo(){
        $login = $_SESSION['login'];
        (new OrmPerfil)->eliminarNotifyCorreo($login);
        $estado = (new OrmPerfil)->contarNotificacionesCorreo($_SESSION["login"]);
        $_SESSION["notificacionesCorreo"] = 0;
        echo json_encode($estado);
    }

}
