function hechizoClick(login) {
    fetch(URL_PATH + "/api/hechizar/" + login)
        .then((res) => res.json())
        .then((res) => {
            var hechizo = document.querySelector("#hechizar" + login);
            var texto = document.querySelector("#textohechizo" + login);
            if (res.estado) {
                hechizo.classList.add("nohechizo"); // Color rojo
                texto.innerHTML = "Deshechizar";
                fetch(URL_PATH + "/api/hechizar/")
                    .then((res) => res.json())
                    .then((res) => {
                        var numhechizos = document.querySelector("#numhechizos" + login);
                        if (res.hechizos > 0) {
                            numhechizos.innerHTML = res.hechizos;
                        } else {
                            location.href =URL_PATH+"/perfil/"+login;
                        }
                    })
            } else {
                hechizo.classList.remove("nohechizo");
                hechizo.classList.add("hechizo");
                texto.innerHTML = "Hechizar";
            }
        })

}