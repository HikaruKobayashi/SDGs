// パララックスデザイン → 使わなくなる可能性あり
$(function($) {
  let $window = $(window);

  $('.content').each(function(index) {
   //初期値を取得
    let top = $('#box1').offset().top;
    $(window).scroll(function() {
      //スクロールの値を取得
      let value = $(this).scrollTop();
      // 動きを加える
      $('#box1').css('top', top + value / 2);
      $('#box2').css('top', top + value / 4);
      $('#box3').css('top', top + value / 6);
      $('#box4').css('top', top + value / 8);
    });
  });
});
console.log('hello Parallax.js');