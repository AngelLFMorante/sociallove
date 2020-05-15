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
        $data["estado"] = (new OrmPerfil)->hechizarODeshechizar($login, $_SESSION["login"]);
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
        echo json_encode($devolverhechizos);
    }
    
}
