function hechizoClick(login) {
    fetch(URL_PATH + "/api/hechizar/" + login)
        .then((res) => res.json())
        .then((res) => {
            var hechizo = document.querySelector("#hechizar" + login);
            var texto = document.querySelector("#textohechizo" + login);
            if (res.estado) {
                hechizo.classList.add("nohechizo"); // Color rojo
                texto.innerHTML = "Deshechizar";
                if(res.botonEstado) {
                    $('#botonComentar').removeClass('oculto');
                }
                document.getElementById("numHechizos").innerHTML = res.hechizosContador.hechizos;
            } else {
                hechizo.classList.remove("nohechizo");
                hechizo.classList.add("hechizo");
                texto.innerHTML = "Hechizar";
            }
        })

}