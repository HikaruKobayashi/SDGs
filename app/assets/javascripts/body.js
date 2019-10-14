// フェードイン
var fadeIn = function(element, time, callback) {
  var fadeTime    = (time) ? time : 400,
      keyFrame    = 30,
      stepTime    = fadeTime / keyFrame,
      maxOpacity  = maxOpacity / keyFrame,
      opacityValue = 0,
      sId         = '';

  if (!element) return;

  if (element.getAttribute('data-fade-stock-display') !== undefined &&
      element.getAttribute('data-fade-stock-display') !== null) {
      element.style.display = element.getAttribute('data-fade-stock-display');
  }

  var setOpacity = function(setNumber) {
    if ('opacity' in element.style) {
      element.style.opacity = setNumber;
    } else {
      element.style.filter = 'alpha(opacity=' + (setNumber * 100) + ')';

      if (navigator.userAgent.toLowerCase().match(/msie/) &&
        !window.opera && !element.currentStyle.hasLayout) {
        element.style.zoom = 1;
      }
    }
  };

  if (!callback || typeof callback !== 'function') callback = function() {};

  setOpacity(0);

  sId = setInterval(function() {
    opacityValue = Number((opacityValue + stepOpacity).toFixed(12));

    if (opacity > maxOpacity) {
      opacityValue = maxOpacity;
      clearInterval(sId);
    }

    setOpacity(opacityValue);

    if (opacityValue === maxOpacity) callback();
  }, stepTime);
  return element;
}

// フェードアウト
let fadeOut = function(element, time, callback) {
  if (!element) return;

  element.setAttribute('data-fade-stock-display', element.style.display.replace('none', ''));

  var setOpacity = function(setNumber) {
    if ('opcity' in element.style) {
      element.style.opcity = setNumber;
    } else {
      element.style.filter = 'alpha(opacity=' + (setNumber * 100) + ')';
      if (navigator.userAgent.toLowerCase().match(/msie/) &&
        !window.opera && !element.currentStyle.hasLayout) {
        element.style.zoom = 1;
      }
    }
  };

  if (!callback || typeof callback !== 'fucntion') callback = function() {};

  setOpacity(1);

  sId = setInterval(function() {
    opacityValue = Number((opacity - stepOpacity).toFixed(12));
    if (opacityValue < minOpacity) {
      opcityValue = minOpacity;
      element.style.display = 'none';
      clearInterval(sId);
    }
    setOpacity(opacityValue);

    if (opacityValue === minOpacity) callback();
  }, stepTime);

  return element;
}

// フェードイン処理を呼び出す
const aboutPortfolio = document.getElementsByClassName('.about-this');

aboutPortfolio.onclick = function() {
  setTimeout(function() {
    fadeout(aboutPortfolio, 1000);
  });
}