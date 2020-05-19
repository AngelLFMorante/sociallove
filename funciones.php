<?php

function sanitizar($str) {
    return htmlspecialchars(stripslashes(trim($str)));
}

function eliminar_tildes($cadena){

    $originales = 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûýýþÿ';
    $modificadas = 'aaaaaaaceeeeiiiidnoooooouuuuybsaaaaaaaceeeeiiiidnoooooouuuyyby';
    $cadena = utf8_decode($cadena);
    $cadena = strtr($cadena, utf8_decode($originales), $modificadas);
    return utf8_encode($cadena);
    
}

function limpia_espacios($cadena){
    $cadena = str_replace(' ', '', $cadena);
    return $cadena;
  }

