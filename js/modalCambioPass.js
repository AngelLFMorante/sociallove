/*alberto*/
function modalcambiopass() {   
    
    Swal.fire({
        icon: 'info',
        title: 'Debes cambiar tu clave',
        text: 'Por seguridad..',
        showConfirmButton: false,
        footer: '<a href="//localhost' + URL_PATH + '/cambiapassFB' + '">Cambiar ahora</a> '
    })

}


