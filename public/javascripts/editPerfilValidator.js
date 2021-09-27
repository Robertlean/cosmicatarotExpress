let qs = function (elemento) {
    return document.querySelector(elemento)
}
window.addEventListener('load', function () {
    let formulario = qs('#formRegister')

    let inputPassActual = qs('#passactual')
    let inputPass = qs('#pass');
    let inputPass2 = qs('#pass2');
    //let regExPass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/;

    inputPass.addEventListener('blur', function () {
        switch (true) {
            case inputPassActual != null:
                this.classList.add('is-invalid')
                break;
            case this.value.length == 0:
                errorPass.innerHTML = "El campo contraseña es obligatorio";
                this.classList.add('is-invalid')
                break;
            case !regExPass.test(this.value):
                errorPass.innerHTML = "El campo de contraseña debe tener minimo 6 caracteres"
                this.classList.add('is-invalid')
                break;
            default:
                this.classList.remove('is-invalid');
                this.classList.add('is-valid');
                errorPass.innerHTML = ""
                break;
        }
    })

    inputPass2.addEventListener('blur', function () {
        switch (true) {
            case inputPassActual != null:
                this.classList.add('is-invalid')
                break;
            case this.value == "" && inputPassActual == "":
                errorPass2.innerHTML = "La verificación de contraseña es obligatorio"
                this.classList.add('is-invalid')
                break
            case this.value != inputPass.value:
                errorPass2.innerHTML = "Las contraseñas no coinciden"
                this.classList.add('is-invalid')
                break;
            default:
                this.classList.remove('is-invalid');
                this.classList.add('is-valid');
                errorPass2.innerHTML = "";
        }
    })

    formulario.addEventListener('submit', function (event) {
        let error = false
        event.preventDefault()

        let elementosForm = this.elementos

        for (let index = 0; index < elementosForm.length - 1; index++) {
            if (elementosForm[index].value == "") {
                elementosForm[index].classList.add('is-invalid');
                msgError.innerHTML = "Los campos señadados son obligatorios";
                error = true
            }
        }
        if (!error) {
            alert("Perfil editado exitosamente")
            formulario.submit()
        }

    })


})