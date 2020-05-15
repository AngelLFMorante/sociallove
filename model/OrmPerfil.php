<?php

namespace model;

use dawfony\Klasto;
/********Carlos ********/
class OrmPerfil {
    public function obtenerPerfil($login) {
        return Klasto::getInstance()->queryOne(
            "SELECT genero, login, edad, ubicacion, foto_perfil as foto, busco, sobreti, gustos FROM usuario WHERE login = ?  ",
        [$login],"model\Usuario"
        );
    }

    public function hechizarODeshechizar($hechizado, $hechiza) {
        $db = Klasto::getInstance();
        $num = $db->execute(
            "DELETE FROM `like`WHERE usuario_da_like = ? AND usuario_recibe_like = ?",
            [$hechiza, $hechizado]
        );
        if ($num > 0) {
            return false; // Ya no tiene hechizo
        }
        $db->execute(
            "INSERT INTO `like`(usuario_da_like, usuario_recibe_like, notificado) VALUES(?,?,0)",
            [$hechiza, $hechizado]
        );
        return true; //tiene hechizo
    }

    public function leHaHechizado($hechizado, $hechiza) {
        return (Klasto::getInstance()->queryOne(
            "SELECT count(*) as cuenta FROM `like` WHERE usuario_da_like = ? and usuario_recibe_like = ?",
            [$hechiza, $hechizado]
        )["cuenta"]) > 0;
    }

    public function gastarHechizo($hechiza) {
        Klasto::getInstance()->execute(
            "UPDATE usuario SET hechizos = hechizos - 1 WHERE login = ?",
            [$hechiza]
        );
    }

    public function notificaciones($login) {
        return (Klasto::getInstance()->query(
            "SELECT usuario_da_like as dalike, usuario_recibe_like as recibelike, notificado FROM `like` WHERE usuario_recibe_like = ? AND notificado = 0", //Notificado a 0 es que no se le haya notificado al usuario que le han dado un like
            [$login]
        ));
    }

    public function contarNotificaciones($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT count(*) as cuenta FROM `like` WHERE usuario_recibe_like = ? AND notificado = 0",
            [$login]
        ));
    }

    public function borrarHechizosPerfil($login) {
        return Klasto::getInstance()->execute(
            "DELETE FROM `like` WHERE `usuario_da_like` = ? or `usuario_recibe_like` = ?",
            [$login, $login]
        );
    }

    public function borrarUsuario($login) {
        return Klasto::getInstance()->execute(
            "DELETE FROM `usuario` WHERE `usuario`.`login` = ?",
            [$login]//para borrar perfil.
            );
    }
    public function borrarcomentarios($login){
        return Klasto::getInstance()->execute(
            "DELETE FROM `mensaje` WHERE usuario_envia = ? or usuario_recibe = ?",
            [$login,$login]//para borrar comentarios.
            );
    }

    public function borrarPerfil($login) {
        Klasto::getInstance()->startTransaction();
        (new OrmPerfil)->borrarHechizosPerfil($login);
        (new OrmPerfil)->borrarUsuario($login);
        (new OrmPerfil)->borrarcomentarios($login);
        Klasto::getInstance()->commit();
    }

    public function usuariosNoti($dalike) {
        return (Klasto::getInstance()->queryOne(
            "SELECT foto_perfil as foto, login, genero, edad FROM `usuario` WHERE login = ?",
            [$dalike]
        ));
    }

    public function notificado($daLike, $recibeLike) {
        Klasto::getInstance()->execute(
            "UPDATE `like` SET notificado = 1 WHERE `usuario_da_like` = ? AND `usuario_recibe_like` = ?",
            [$daLike, $recibeLike]
        );
    }
    function sacarMensajes($pagina = 1,$login)
    {
        global $config;
        $limite = $config["post_per_page_coments"];
        $offset = ($pagina - 1) * $limite;
        return Klasto::getInstance()->query(
            "SELECT id,texto,usuario_envia as uEnviado, usuario_recibe as uRecibido,fecha FROM mensaje where usuario_recibe =? ORDER BY fecha DESC LIMIT $limite OFFSET $offset",
            [$login],
            "\model\Post"
        );
    }
    public function contarUltimoPosts($login)
    {
        return Klasto::getInstance()->queryOne("SELECT count(*) as cuenta FROM `mensaje` where usuario_recibe= ?",[$login])["cuenta"];
    }

    function insertarComentario($comentario)
    {
        return Klasto::getInstance()->execute(
            "INSERT INTO `mensaje`(`usuario_envia`, `usuario_recibe`, `texto`, `fecha`) VALUES (?,?,?,?)",
            [$comentario->usuarioEnviado, $comentario->usuarioRecibido, $comentario->texto, $comentario->fecha]
        );
    }
    function eliminarComentario($id)
    {
        return Klasto::getInstance()->execute(
            "DELETE FROM `mensaje` WHERE id=?",
            [$id]
        );
    }
}