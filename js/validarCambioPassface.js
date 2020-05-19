
function recPassUserfb() {   
    $('#password').passtrength({
        passwordToggle: true,
        eyeImg : 'assets/fotosInterfaces/visibilidad.svg',        
        tooltip: true,
        textWeak: "Debil",
        textMedium: "Medio",
        textStrong: "Fuerte",
        textVeryStrong: "Muy fuerte"
    });    
    $("#password").keyup(comprobarPasswordSeguro);
    $("#repassword").keyup(comprobarPasswordIguales);
}

/* Contraseña y Repite Contraseña 3 metodos */
function comprobarPasswordSeguro() {
    document.getElementById('password').addEventListener('input', function (e) {
        const campo = e.target,
            valido = document.getElementById('checkpass'),
            regex = /^(?=.*\d)(?=.*[a-záéíóúüñ]).*[A-ZÁÉÍÓÚÜÑ]/;
        if (regex.test(campo.value)) {
            document.getElementById("checkpass").innerHTML = "<i class='fa fa-check' style='color:green'>Válido</i>";
            //valido.innerText = "válida";
            document.getElementById("repassword").disabled = false;
        } else {
            document.getElementById("checkpass").innerHTML = "<i class='fa fa-check' style='color:red'>Insegura</i>";
        }
    });
}

function comprobarPasswordIguales() {
    var password = $("#password").val(); //para validar si son =les
    var confirmarPassword = $("#repassword").val(); //para validar si son =les
    //console.log(password);
    if (password != confirmarPassword) {
        $("#divcomprobarsisoniguales").html("<i class='fa fa-close pt-2' style='color:red'>&nbsp;Las claves no coinciden</i><input value='error' type='hidden'>");
        document.getElementById("checkrepass").innerHTML = "";

        document.getElementById("thesubmitBoton").disabled = true;
    } else {
        $("#divcomprobarsisoniguales").html("<i class='fa fa-check pt-2' style='color:green'>Las claves coinciden</i> <input type='hidden'  value='1'>");
        document.getElementById("thesubmitBoton").disabled = false;
        var camporePassword = $("#repassword"); //para cambiar el color
        var campoPassword = $("#password"); //para cambiar el color
        campoPassword.addClass("is-valid");
        camporePassword.addClass("is-valid");
        document.getElementById("checkrepass").innerHTML = "<i class='fa fa-check' style='color:green'>Válido</i>";

    }
}

function plugPasswStreng(a) {
    //console.log(a);
    //console.log($('#password').val());
    $('#password').passtrength({
        passwordToggle: true,
        eyeImg : 'assets/fotosInterfaces/visibilidad.svg',
        //eyeImg: "img/eye.svg",
        tooltip: true,
        textWeak: "Debil",
        textMedium: "Medio",
        textStrong: "Fuerte",
        textVeryStrong: "Muy fuerte"
    });
}

