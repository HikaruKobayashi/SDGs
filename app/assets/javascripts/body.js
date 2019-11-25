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