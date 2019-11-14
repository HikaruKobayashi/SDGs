// スムーススクロール機能
$(function(){
  $('a[href^="#"]').click(function() {
    const speed = 1200;
    const href= $(this).attr("href");
    const target = $(href == "#" || href == "" ? 'html' : href);
    const position = target.offset().top;
    $('body,html').animate({scrollTop:position}, speed, 'swing');
    return false;
  });
});

// zoom jQueryに描きなおす必要あり
window.onload = function() {
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
}