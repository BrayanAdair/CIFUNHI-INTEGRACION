// ocultar y activar alerta de olvidar constraseña 
let ocultar = document.querySelector(".alert__forgetPassword");
function alerVisible(){
    ocultar.style.visibility = "visible";

}
function alerHidden(){
    ocultar.style.visibility = "hidden";

}

function login() {
    // Obtener los valores de usuario y contraseña
    var username = document.getElementById("usuario").value;
    var password = document.getElementById("password").value;
  
    // Realizar las validaciones de usuario y contraseña aquí
  
    // Si las validaciones pasan, redirigir al usuario a la página de inicio de sesión
    window.location.href = "index.html";
  }
  
  // Capturar el evento de presionar Enter en el formulario
  document.getElementById("loginForm").addEventListener("keypress", function(event) {
    if (event.keyCode === 13) {
      event.preventDefault(); // Evitar que el formulario se envíe
      login(); // Llamar a la función de inicio de sesión
    }
  });
  