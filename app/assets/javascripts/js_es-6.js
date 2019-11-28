window.addEventListener('DOMContentLoaded', function() {
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

  // スクロール率に合わせて表示される
  $(function(){
    $(window).scroll(function(){
      const obj_t_pos = $('#target').offset().top;
      const scr_count = $(document).scrollTop() + (window.innerHeight/2);
      if(scr_count > obj_t_pos){
        $('#target').addClass('anime-test');
        $('#target-2').addClass('anime-test-2');
      }else{
        $('#target').removeClass();
        $('#target-2').removeClass();
      }
    })
  });
});