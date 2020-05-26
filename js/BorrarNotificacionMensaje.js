addEventListener('load', BorrarNotificacionMensaje);

function BorrarNotificacionMensaje(){
    fetch(URL_PATH + "/notifyCorreo")
        .then((res) => res.json())
        .then((res) => {
            if(res.cuenta == 0){
                var element = document.getElementById("NotifyMail");
                element.remove();
            }
        })

}