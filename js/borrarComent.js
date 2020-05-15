function borrarComent(login, id) {
    if (confirm("¿Seguro que desea borrar el comentario de "+login+"?")) {
        location.href=URL_PATH + "/deleteComent/"+id;
    }
}