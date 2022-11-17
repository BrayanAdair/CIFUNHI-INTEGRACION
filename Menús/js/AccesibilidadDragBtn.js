// ---------------------------------------------------------------------------------------
//  Script para el arrastre del boton de accesibilidad Dragged
// Elaborado por Brayan Adair & Alexis Arturo
// ---------------------------------------------------------------------------------------
// FUNCION PARA ARRASTRAR EL BOTON PERO NO FUNCIONA (ARREGLAR)
// let currentDroppable = null;
// CIFUNHI.onmousedown = function(event) {
//         let shiftX = event.clientX - CIFUNHI.getBoundingClientRect().left;
//         let shiftY = event.clientY - CIFUNHI.getBoundingClientRect().top;
//         CIFUNHI.style.position = 'absolute';
//         CIFUNHI.style.zIndex = 1000;
//         document.body.append(CIFUNHI);
//         moveAt(event.pageX, event.pageY);
//         function moveAt(pageX, pageY) {
//           CIFUNHI.style.left = pageX - shiftX + 'px';
//           CIFUNHI.style.top = pageY - shiftY + 'px';
//         }
//         function onMouseMove(event) {
//           moveAt(event.pageX, event.pageY);
//           CIFUNHI.hidden = true;
//           let elemBelow = document.elementFromPoint(event.clientX, event.clientY);
//           CIFUNHI.hidden = false;
//           if (!elemBelow) return;
//           let droppableBelow = elemBelow.closest('.droppable');
//           if (currentDroppable != droppableBelow) {
//             if (currentDroppable) { // nulo cuando no habíamos superado un droppable antes de este evento
//               leaveDroppable(currentDroppable);
//             }
//             currentDroppable = droppableBelow;
//             if (currentDroppable) { // Nulo si no estamos llegando a un dropeable ahora
//               enterDroppable(currentDroppable);
//             }
//           }
//         }
//         document.addEventListener('mousemove', onMouseMove);
//         CIFUNHI.onmouseup = function() {
//           document.removeEventListener('mousemove', onMouseMove);
//           CIFUNHI.onmouseup = null;
//         };
//       };
//       function enterDroppable(elem) {
//         elem.style.background = 'pink';
//       }
//       function leaveDroppable(elem) {
//         elem.style.background = '';
//       }
//     // quitar esta funcion para evitar que se despegue el mouse del boton (no recomendable)
//     CIFUNHI.ondragstart = function() {
//         return false;
//       };
// --------------------------------------------------------------------------------------------
      // Funcion para el menu modal
// -------------------------------------------------------------------------------------------
      var modal = document.getElementById("myModal");
      // Cariable boton que abrira la modal
      var AccesibilidadBotonCIFUNHI = document.getElementById("Accesibilidad");
      // cuerra cierra el modal pulsando donde sea
      var span = document.getElementsByClassName("close")[0];
      // Funcion para abrir modal
      AccesibilidadBotonCIFUNHI.onclick = function() {
        modal.style.display = "block";
      }
      // Funcion prcionar x cierra el modal
      span.onclick = function() {
        modal.style.display = "none";
      }
      // Funcion para cerrar modal pulsando donde sea
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }