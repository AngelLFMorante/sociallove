<?php
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
require_once('Facebook/autoload.php');

$FBObject = new \Facebook\Facebook([
	'app_id' => '565161470795223',
	'app_secret' => '0aa9c178b4196097f8ea5fce5b51debe',
	'default_graph_version' => 'v2.7'
]);

$handler = $FBObject -> getRedirectLoginHelper();
?>