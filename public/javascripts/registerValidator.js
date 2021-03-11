let qs = function(elemento){
    return document.querySelector(elemento)
}
window.addEventListener('load',function(){

   console.log('JS vinculado correctamente...')

   let formulario = qs ('#formRegister')
   
   let inputNombre = qs('#users');
   let inputEmail = qs('#mail');
   let inputDate = qs('#date')
   let inputPass = qs('#pass');
   let inputPass2 = qs('#pass2');
   //let regExPass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}$/;

   let regExEmail =  /^(([^<>()\[\]\.,;:\s@\”]+(\.[^<>()\[\]\.,;:\s@\”]:+)*)|(\”.+\”))@(([^<>()[\]\.,;:\s@\”]+\.)+[^<>()[\]\.,;:\s@\”]{2,})$/;

   inputNombre.addEventListener('blur', function(){
       switch (true) {
           case this.value.length == 0:
               errorNombre.innerHTML = "El campo del  nombre es obligatorio";
               this.classList.add('is_invalid')
               break;
           case this.value.length == 1:
               errorNombre.innerHTML = "El campo del nombre debe tener al menos 3 letras";
               this.classList.add('is-invalid')
               break;
           default:
               this.classList.remove('is-invalid');
               this.classList.add('is-valid');
               errorNombre.innerHTML = ""
               break;
       }
   })

   inputDate.addEventListener('blur',function(){
       switch (true) {
           case this.value.length == 0:
               errorDate.innerHTML =  "El campo fecha es obligatorio";
               this.classList.add('is-invalid')
               break;
           default:
               this.classList.remove('is-invalid');
               this.classList.add('is-valid');
               errorDate.innerHTML = ""
               break;
        }
    })

    inputEmail.addEventListener('blur',function(){
        switch (true) {
            case this.value.length == 0:
                errorEmail.innerHTML = "El campo del email obligatorio";
                this.classList.add('is-invalid')
                break;
            case !regExEmail.test(this.value):
                errorEmail.innerHTML = "El campo del email debe tener al menos 3 letras";
                this.classList.add('is-invalid')
                break;
            default:
                this.classList.remove('is-invalid');
                this.classList.add('is-valid');
                errorEmail.innerHTML = ""
                break;
        }
    })

        inputPass.addEventListener('blur',function(){
           switch (true) {
               case this.value.length == 0:
                   errorPass.innerHTML ="El campo contraseña es obligatorio";
                   this.classList.add('is-invalid')
                   break;
               case !regExPass.test(this.value):
                   errorPass.innerHTML = "El campo del Contraseña debe tener minimo 6 caracteres"
                   this.classList.add('is-invalid')
                   break;
               default:
                   this.classList.remove('is-invalid');
                   this.classList.add('is-valid');
                   errorPass.innerHTML = ""
                   break;
            }
        })
   
        inputPass2.addEventListener('blur',function(){
           switch (true) {
               case this.value == "":
                   errorPass2.innerHTML = "La verificación de contraseña es obligatorio"
                   this.classList.add('is-invalid')
               break
               case this.value != inputPass.value:
                   errorPass2.innerHTML ="Las contraseñas no coinciden"
                   this.classList.add('is-invalid')
               break;
               default:
               this.classList.remove('is-invalid');
               this.classList.add('is-valid');
               errorPass2.innerHTML = "";
           }
       })

   formulario.addEventListener('submit',function(event){
       let error = false
       event.preventDefault()

       let elementosForm = this.elementos
       
       for (let index = 0; index < elementosForm.length-1; index++) {
           if(elementosForm[index].value == ""){
               elementosForm[index].classList.add('is-invalid');
               msgError.innerHTML = "Los campos señadados son obligatorios";
               error =true
           }
       }
       if(!error){
           console.log("Todo Perfecto!!");
           alert("Te registraste correctamente, inicia sesión")
           formulario.submit()
       }
       
   })

   
})