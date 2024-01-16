const form = document.getElementById("form");
const resumen = document.getElementById("resumen");
const amount = document.getElementById("amount");
const precie = document.getElementById("precie");
const clear = document.getElementById("clear");
let params = new URLSearchParams(document.location.search);
let name = params.get("pago");

if (name != undefined && name === "success") {
    Swal.fire({
        title: "Pago Exitoso!",
        text: `Pago Exitoso!`,
        icon: "success",
        confirmButtonText: "Exit",
    });
}

if (name != undefined && name === "error") {
    Swal.fire({
        title: "Fallo en el Pago!",
        text: `Pago no Exitoso.!`,
        icon: "error",
        confirmButtonText: "Exit",
    });
}
resumen.addEventListener("click", submit);
clear.addEventListener("click", clean);

function clean(value) {
    amount.classList.add("visually-hidden");
    form.reset();
}

function submit(value) {
    const formData = new FormData(form);
    if (checkInput(formData)) {
        return;
    }

    const data = serializeForm(formData);

    // const json = JSON.stringify(Object.fromEntries(formData));

    precie.textContent = descuento(data);
    amount.classList.remove("visually-hidden");
}

const descuento = (e) => {
    const offSale = [80, 50, 15];
    if (e.categoria < 0) {
        Swal.fire({
            title: "Error!",
            text: `Categoría Errónea!`,
            icon: "error",
            confirmButtonText: "Exit",
        });
        return;
    }

    return e.cantidad * (200 - 200 * (offSale[e.categoria] / 100));
};

const serializeForm = function (form) {
    let obj = {};
    for (var key of form.keys()) {
        obj[key] = form.get(key);
    }
    return obj;
};

const checkInput = (value) => {
    let status = false;
    for (var key of value.keys()) {
        if (!value.get(key)) {
            Swal.fire({
                title: "Error!",
                text: `Complete el campo " ${key.toUpperCase()} "`,
                icon: "error",
                confirmButtonText: "Exit",
            });
            status = true;
            break;
        }
    }
    return status;
};
