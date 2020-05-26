addEventListener('load', inicio);

function inicio() {
    var altura = document.getElementById('altura');
    var peso = document.getElementById('peso');
    read("mousedown");
    read("mousemove");
    read("keydown");
    function read(evtType) {
        altura.addEventListener(evtType, function () {
            window.requestAnimationFrame(function () {
                document.getElementById("numAltura").innerHTML = altura.value;
                altura.setAttribute("aria-valuenow", altura.value);
            });
        });
        peso.addEventListener(evtType, function () {
            window.requestAnimationFrame(function () {
                document.getElementById("numPeso").innerHTML = peso.value;
                peso.setAttribute("aria-valuenow", peso.value);
            });
        });
    }
}


