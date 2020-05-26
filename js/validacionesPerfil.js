function modificarDescripcionPerfil(login) {

    var desc = document.getElementById("textDescripcion").value;
    fetch(URL_PATH + "/modificar/descripcion", {
        method: "POST",
        body: JSON.stringify(desc),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var descripcion = document.getElementById("descripcionsobreti");
            descripcion.textContent = res.sobreti;
        })
}

function modificarLoQueBusco(login) {

    var loquebusco = document.getElementById("textloquebusco").value;
    fetch(URL_PATH + "/modificar/loquebusco", {
        method: "POST",
        body: JSON.stringify(loquebusco),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var loquebusco = document.getElementById("descripcionloquebusco");
            loquebusco.textContent = res.loquebuscas;
        })
}

function modificarProfesion(login) {

    var profesion = document.getElementById("textprofesion").value;
    fetch(URL_PATH + "/modificar/profesion", {
        method: "POST",
        body: JSON.stringify(profesion),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var profesion = document.getElementById("detallesProfesion");
            profesion.textContent = res.profesion;
        })
}

function modificarHobbies(login) {

    var hobbies = document.getElementById("textHobbies").value;
    fetch(URL_PATH + "/modificar/hobbies", {
        method: "POST",
        body: JSON.stringify(hobbies),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var hobbies = document.getElementById("detallesHobbies");
            hobbies.textContent = res.hobbies;
        })
}

function modificarRelacion(login) {
    var relacion = document.formRelacion.relacion.value;
    fetch(URL_PATH + "/modificar/relacion", {
        method: "POST",
        body: JSON.stringify(relacion),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var relacion = document.getElementById("detallesRelacion");
            relacion.textContent = res.relacion;
        })
}

function modificarEstilo(login) {
    var estilo = document.formEstilo.estilo.value;
    fetch(URL_PATH + "/modificar/estilo", {
        method: "POST",
        body: JSON.stringify(estilo),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var estilo = document.getElementById("detallesEstilo");
            estilo.textContent = res.estilo;
        })
}

function modificarSigno(login) {
    var signo = document.formSigno.signo.value;
    fetch(URL_PATH + "/modificar/signo", {
        method: "POST",
        body: JSON.stringify(signo),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var signo = document.getElementById("detallesSigno");
            signo.textContent = res.signo;
        })
}

function modificarAlcohol(login) {
    var alcohol = document.formAlcohol.alcohol.value;
    fetch(URL_PATH + "/modificar/alcohol", {
        method: "POST",
        body: JSON.stringify(alcohol),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var alcohol = document.getElementById("detallesAlcohol");
            alcohol.textContent = res.alcohol;
        })
}

function modificarTabaco(login) {
    var tabaco = document.formTabaco.tabaco.value;
    fetch(URL_PATH + "/modificar/tabaco", {
        method: "POST",
        body: JSON.stringify(tabaco),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var tabaco = document.getElementById("detallesTabaco");
            tabaco.textContent = res.tabaco;
        })
}

function modificarTransporte(login) {
    var transporte = document.formTransporte.transporte.value;
    fetch(URL_PATH + "/modificar/transporte", {
        method: "POST",
        body: JSON.stringify(transporte),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var transporte = document.getElementById("detallesTransporte");
            transporte.textContent = res.transporte;
        })
}

function modificarComida(login) {
    var comida = document.formComida.comida.value;
    fetch(URL_PATH + "/modificar/comida", {
        method: "POST",
        body: JSON.stringify(comida),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var comida = document.getElementById("detallesComida");
            comida.textContent = res.comida;
        })
}

function modificarDeportes(login) {
    var deportes = document.formDeportes.deportes.value;
    fetch(URL_PATH + "/modificar/deportes", {
        method: "POST",
        body: JSON.stringify(deportes),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var deportes = document.getElementById("detallesDeportes");
            deportes.textContent = res.deportes;
        })
}

function modificarMusica(login) {
    var musica = document.formMusica.musica.value;
    fetch(URL_PATH + "/modificar/musica", {
        method: "POST",
        body: JSON.stringify(musica),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var musica = document.getElementById("detallesMusica");
            musica.textContent = res.musica;
        })
}

function modificarMedidas(login) {
    var altura = document.getElementById("altura").value;
    var peso = document.getElementById("peso").value;
    var medidas = "Altura "+(altura / 100)+"m y peso " + peso +" kilos";
    fetch(URL_PATH + "/modificar/medidas", {
        method: "POST",
        body: JSON.stringify(medidas),
        headers: {
            "Accept": "application/json"
        }
    }).then((res) => res.json())
        .then((res) => {
            var medidas = document.getElementById("detallesMedidas");
            medidas.textContent = res.medidas;
        })
}