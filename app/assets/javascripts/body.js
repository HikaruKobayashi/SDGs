// スクロール率
$(function($) {
  var $window = $(window);

  $('.content').each(function(index) {
      var $self = $(this);
      var offsetPositions = $self.offset();

      $(window).scroll(function() {
          if (($window.scrollTop() + $window.height()) > offsetPositions.top && ((offsetPositions.top + $self.height()) > $window.scrollTop())) {
              let offsetY = $window.scrollTop() - offsetPositions.top;
              let positions = '50%' + offsetY * 'px';
              $self.css('backgroundPosition', positions);
          }
      });
  });
});

// フェードイン
var fadeIn = function(element, time, callback) {
  var fadeTime     = (time) ? time : 600,
      keyFrame     = 30,
      stepTime     = fadeTime / keyFrame,
      maxOpacity   = 1,
      stepOpacity  = maxOpacity / keyFrame,
      opacityValue = 0,
      sId          = '';

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

      if (opacityValue > maxOpacity) {
          opacityValue = maxOpacity;
          clearInterval(sId);
      }

      setOpacity(opacityValue);

      if (opacityValue === maxOpacity) callback();
  }, stepTime);

  return element;
};
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
const pic1 = document.getElementById('header-icon');
window.onload = function() {
  setTimeout(function() {
    fadeIn(pic1, 1000);
  })
}

jQuery(function(){
  jQuery(window).scroll(function(){
     const obj_t_pos = jQuery('#target').offset().top;
     const scr_count = jQuery(document).scrollTop() + (window.innerHeight/2);
     if(scr_count > obj_t_pos){
        jQuery('#target').addClass('anime-test');
        jQuery('#target-2').addClass('anime-test-2');
     }else{
        jQuery('#target').removeClass();
        jQuery('#target-2').removeClass();
     }
  })
})
// canvasでsdgs-3を再現する
// let cs = document.getElementById('sdgs-3'),
//     ctx = cs.getContext('2d'),
//     csWidth = cs.width,
//     csHeight = cs.height,
//     center = {
//       x: csWidth / 2,
//       y: csHeight /2
//     };

// // 線の基本スタイル
// ctx.strokeStyle = '#666';
// ctx.lineWidth = 10;

// // 横線を引く
// var drawHorizontalline = function() {
//   ctx.beginPath();
//   ctx.moveTo(0, center.y);
//   ctx.lineTo(csWidth, center.y);
//   ctx.closePath();
//   ctx.stroke();
// }
// drawHorizontalline();


// var drawHorizontalLineAnim = function() {
//   var beginPos = 0,  // スタート位置
//       movePos  = beginPos,  // 移動位置（現在位置）
//       addVal   = 10,  // 加算量
//       endPos   = csWidth - 10,  // 終了位置
//       isAnim   = function() {  // アニメーションを終了する条件
//         return (movePos < endPos);
//       };

//   var render = function() {
//     ctx.beginPath();
//     ctx.moveTo(beginPos, center.y);
//     ctx.lineTo(movePos, center.y);
//     ctx.closePath();
//     ctx.stroke();

//     if (isAnim() === true) {
//       movePos += addVal;
//       // ↑のaddで終了点を超えることがあるため上限を決める
//       movePos = (isAnim() === false) ? endPos : movePos;
//       requestAnimationFrame(render)
//     }
//   };
//   render();
// };
// drawHorizontalLineAnim();


// var cs       = document.getElementById('sdgs-3'),
//     ctx      = cs.getContext('2d'),
//     csWidth  = cs.width,
//     csHeight = cs.height,
//     center   = {
//       x: csWidth / 2,
//       y: csHeight / 2
//     };

// ctx.strokeStyle = '#43a0de';
// ctx.lineWidth   = 3;
// ctx.lineJoin    = 'round';

// var Graph = function(arg) {
//   this.initialize(arg);
//   this.moveLength = 0;
//   this.addLength  = 5;
//   this.isAnim     = function() {
//     return (this.moveLength < this.hypotenuse);
//   };
// };

// (function (p) {
//   /**
//    * インスタンスごとの初期設定
//    * @param  {array.obj} arg [beginPos.x, beginPos.y, endPos.x, endPos.y]
//    */
//   p.initialize = function(arg) {
//     this.dfd = $.Deferred();
//     this.beginPos = {
//       x: arg.beginPos.x,
//       y: arg.beginPos.y
//     };
//     this.movePos = {
//       x: arg.beginPos.x,
//       y: arg.beginPos.y
//     };
//     this.endPos = {
//       x: arg.endPos.x,
//       y: arg.endPos.y
//     };
//     this.side = {
//       x: this.endPos.x - this.beginPos.x,
//       y: this.endPos.y - this.beginPos.y
//     };
//     this.hypotenuse = Math.sqrt(Math.pow(this.side.x, 2) + Math.pow(this.side.y, 2));
//     this.radian = Math.atan2(this.side.y, this.side.x);
//   };
//   p.draw = function() {
//     ctx.beginPath();
//     ctx.moveTo(this.beginPos.x, this.beginPos.y);
//     ctx.lineTo(this.movePos.x, this.movePos.y);
//     ctx.closePath();
//     ctx.stroke();
//   };
//   p.update = function() {
//     this.moveLength += this.addLength;
//     this.movePos.x += Math.cos(this.radian) * this.addLength;
//     this.movePos.y += Math.sin(this.radian) * this.addLength;
//   };
//   p.render = function() {
//     this.draw();
//     if (this.isAnim() === true) {
//       this.update();
//       this.movePos.x = (this.isAnim() === false) ? this.endPos.x : this.movePos.x;
//       this.movePos.y = (this.isAnim() === false) ? this.endPos.y : this.movePos.y;
//       requestAnimationFrame(this.render.bind(this));
//     } else {
//       this.dfd.resolve();
//     }
//     return this.dfd.promise();
//   };
// })(Graph.prototype);

// var graphData = [
//   {
//     beginPos: { x: 30, y: 80 },
//     endPos: { x: 70, y: 80 }
//   },
//   {
//     beginPos: { x: 70, y: 80 },
//     endPos: { x: 90, y: 40 }
//   },
//   {
//     beginPos: { x: 90, y: 40 },
//     endPos: { x: 110, y: 110 }
//   },
//   {
//     beginPos: { x: 110, y: 110 },
//     endPos: { x: 135, y: 60 }
//   },
//   {
//     beginPos: { x: 135, y: 60 },
//     endPos: { x: 160, y:  140 }
//   },
//   {
//     beginPos: { x: 160, y: 140 },
//     endPos: { x: 200, y: 20 }
//   },
//   {
//     beginPos: { x: 200, y: 20 },
//     endPos: { x: 220, y: 60 }
//   }
// ];

// var graphObj = {},
//     i = 0,
//     j = 0,
//     l = graphData.length;
// for (; i < l; i++) {
//   graphObj[i] = new Graph(graphData[i]);
// }

// $(function() {
//   var d = (new $.Deferred()).resolve();
//   $.each(graphObj, function(i, obj){
//     d = d.then(function() {
//       return obj.render();
//     });
//   });
// })

// zoom
let swipeOption = {
  loop: true,
  effect: 'fade',
  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
  },
  speed: 1000,
  pagitation: {
    el: '.swiper-pagination',
    clickable: true,
  }
}
new Swiper('.swiper-container', swipeOption);