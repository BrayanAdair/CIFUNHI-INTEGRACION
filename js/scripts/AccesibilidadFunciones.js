const domElements = 'a:not(.not-resize),p:not(.not-resize),h1:not(.not-resize),h2:not(.not-resize),h3:not(.not-resize),h4:not(.not-resize),h5:not(.not-resize),h6:not(.not-resize)';
let sizeStep = 7;
const stepnum = 3;
const initialFontSize = (el) => {
  let element = document.querySelectorAll(el);
  
  element.forEach(el => {
    let style = getComputedStyle(el);
    let fontNum = style.fontSize.replace('px', '');
    
    console.log(fontNum);
  })
  
}

const highlightObjects = (el) => {
  let element = document.querySelectorAll(el);
  
  element.forEach(el => {
    el.classList.toggle('highlight');
  })
}

const upFontSize = (el, currentStep) => {
  let element = document.querySelectorAll(el);
  
  element.forEach(el => {
    let style = getComputedStyle(el);
    let fontNum = parseFloat(style.fontSize.replace('px', ''));
    
    let newCss = parseFloat(fontNum+currentStep);
    
    el.style.fontSize = `${newCss}px`;
  })
  
}
const downFontSize = (el, currentStep) => {
  let element = document.querySelectorAll(el);
  
  element.forEach(el => {
    let style = getComputedStyle(el);
    let fontNum = parseFloat(style.fontSize.replace('px', ''));
    
    let newCss = parseFloat(fontNum-currentStep);
    
    el.style.fontSize = `${newCss}px`;
  })
  
}

const increaseFontSize = () => {
  if(sizeStep < 7) {
    sizeStep++;
    upFontSize(domElements, 3);
  }
}
const decreaseFontSize = () => {
  if(sizeStep > 1) {
    sizeStep--;
    downFontSize(domElements, 3);
  }
}
const increaseBtn = document.querySelector('.increase-font');
const decreaseBtn = document.querySelector('.decrease-font');
const contrastBtn = document.querySelector('.change-contrast');
const lineaBtn = document.querySelector('.active-line');
const resaltarBtn = document.querySelector('.highlight-object');
const cursorBtn = document.querySelector('.change-cursor');
increaseBtn.onclick = e => {
  e.preventDefault();
  increaseFontSize();
};
decreaseBtn.onclick = e => {
  e.preventDefault();
  decreaseFontSize();
};
contrastBtn.onclick = e => {
  e.preventDefault();
  document.querySelector('.main').classList.toggle('high-contrast');
}
lineaBtn.onclick = e => {
  e.preventDefault();
  document.querySelector('.cursor').classList.toggle('activo');
}
resaltarBtn.onclick = e => {
  e.preventDefault();
  highlightObjects(domElements);
}
cursorBtn.onclick = e => {
  e.preventDefault();
  document.querySelector('.main').classList.toggle('new-cursor');
}
const cursorHL = document.querySelector('.hl')

document.addEventListener('mousemove', e => {
  cursorHL.setAttribute('style', `top: ${e.clientY}px;`)
})