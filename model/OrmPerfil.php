<?php

namespace model;

use dawfony\Klasto;
/********Carlos ********/
class OrmPerfil {
    public function obtenerPerfil($login) {
        return Klasto::getInstance()->queryOne(
            "SELECT genero, login, edad, ubicacion, foto_perfil as foto, busco, sobreti, loquebuscas FROM usuario WHERE login = ?  ",
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
    public function contarNotificacionesCorreo($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT count(*) as cuenta FROM `mensaje` WHERE  usuario_recibe = ? AND usuarioNotificado  = 'no'",
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
    public function borrarUsuarioDetalles($login) {
        return Klasto::getInstance()->execute(
            "DELETE FROM `detalles` WHERE `login` = ?",
            [$login]//para borrar perfil de la tabla detalles.
            );
    }


    public function borrarPerfil($login) {
        Klasto::getInstance()->startTransaction();
        (new OrmPerfil)->borrarHechizosPerfil($login);
        (new OrmPerfil)->borrarcomentarios($login);
        (new OrmPerfil)->borrarUsuarioDetalles($login);
        (new OrmPerfil)->borrarUsuario($login);
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
            "INSERT INTO `mensaje`(`usuarioNotificado`,`usuario_envia`, `usuario_recibe`, `texto`, `fecha`) VALUES (?,?,?,?,?)",
            [$comentario->usuarioNotificado, $comentario->usuarioEnviado, $comentario->usuarioRecibido, $comentario->texto, $comentario->fecha]
        );
    }
    function eliminarComentario($id)
    {
        return Klasto::getInstance()->execute(
            "DELETE FROM `mensaje` WHERE id=?",
            [$id]
        );
    }

    function listadoPerfil($login)
    {
        global $config;
        return  Klasto::getInstance()->query(
            "SELECT foto_perfil as foto, login, edad,ubicacion,genero FROM usuario where genero like(SELECT busco from usuario where login=?) EXCEPT(SELECT foto_perfil as foto, login, edad,ubicacion,genero FROM usuario where login = ? or rol_id=0)",
            [$login, $login],
            "model\Usuario"
        );
    }

    function guardarDescripcion($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `usuario` SET sobreti = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarDescripcion($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT sobreti FROM `usuario` WHERE login = ?",
            [$login]
        ));
    }
    function guardarLoQueBusco($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `usuario` SET loquebuscas = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarLoQueBusco($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT loquebuscas FROM `usuario` WHERE login = ?",
            [$login]
        ));
    }

    function guardarRelacion($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET relacion = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarRelacion($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT relacion FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarEstilo($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET estilo = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarEstilo($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT estilo FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarSigno($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET signo = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarSigno($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT signo FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarProfesion($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET profesion = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarProfesion($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT profesion FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarHobbies($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET hobbies = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarHobbies($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT hobbies FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarAlcohol($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET alcohol = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarAlcohol($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT alcohol FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarTabaco($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET tabaco = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarTabaco($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT tabaco FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarMedidas($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET medidas = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarMedidas($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT medidas FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarTransporte($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET transporte = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarTransporte($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT transporte FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarComida($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET comida = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarComida($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT comida FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function guardarDeportes($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET deportes = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarDeportes($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT deportes FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }
    
    function guardarMusica($datos, $login) {
        Klasto::getInstance()->execute(
            "UPDATE `detalles` SET musica = ? WHERE `login` = ?",
            [$datos, $login]
        );
    }

    function sacarMusica($login) {
        return (Klasto::getInstance()->queryOne(
            "SELECT musica FROM `detalles` WHERE login = ?",
            [$login]
        ));
    }

    function obtenerDetalles($login) {
        return Klasto::getInstance()->queryOne(
            "SELECT `login`, `relacion`, `estilo`, `hobbies`, `signo`, `comida`, `profesion`, `deportes`, `alcohol`, `tabaco`, `medidas`, `transporte`, `musica` FROM `detalles` WHERE login = ?  ",
        [$login],"model\Detalles"
        );
        
    }

    function insertarDetalles($login) {
        Klasto::getInstance()->execute(
            "INSERT INTO `detalles`(`login`) VALUES (?)",
            [$login]
        );
    }
    
    /* Eliminar notificacion correo una vez hayamos entrado */
    function eliminarNotifyCorreo($login){
        Klasto::getInstance()->execute(
            "UPDATE `mensaje` SET usuarioNotificado = 'si' WHERE `usuario_recibe` = ?",
            [$login]
        );
    }
    
}