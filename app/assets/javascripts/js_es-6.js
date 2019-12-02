// スクロール率に合わせて表示される
$(function(){
  $(window).scroll(function(){
    const obj_t_pos = $('#target').offset().top;
    const scr_count = $(document).scrollTop() + (window.innerHeight/2);
    if(scr_count > obj_t_pos){
      $('#target').addClass('animation-left');
      $('#target-2').addClass('animation-right');
    }else{
      $('#target').removeClass();
      $('#target-2').removeClass();
    }
  })
});