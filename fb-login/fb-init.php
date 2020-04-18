<?php

//inicio sesion
session_start();

//autoload file de la carpeta vendor
require 'fb-login/vendor/autoload.php';

$fb = new Facebook\Facebook([
    'app_id' => '565161470795223',
    'app_secret' => '0aa9c178b4196097f8ea5fce5b51debe',
    'default_graph_version' => 'v2.7'
]);

$helper = $fb->getRedirectLoginHelper();
$login_url = $helper->getLoginUrl("http://localhost/sociallove");
/* ME da un error que no se que es ni en internet ni nada... */
try {
    $accesToken = $helper->getAccessToken();
    if (isset($accesToken)) {
        $_SESSION['acceso_fb'] = (string) $accesToken;
        header("Location: index.php");
    }
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
}

//para coger el nombre,email etc
/* if ($_SESSION['acceso_fb']) {

    try {

        $fb->setDefaultAccessToken($_SESSION['acceso_fb']);
        $res = $fb->get('/me?locale=es_ES&fields=name,email');
        $user = $res->getGraphUser();
        //aqui nos saldria el nombre, asi que tenemos que recogerlo y guardarlo en la bd.
        $user->getField('name');
    } catch (Exception $exc) {
        echo $exc->getTraceAsString();
    }
} */
