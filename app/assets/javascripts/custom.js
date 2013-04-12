jQuery(document).ready(function($) {
  var winheight = $(window).height()/2 + 20;
  $('#slider-with-blocks-1').css('height', winheight + "px");
  // jQuery.rsCSS3Easing.easeOutBack = 'cubic-bezier(0.175, 0.885, 0.320, 1.275)';
  $('#slider-with-blocks-1').royalSlider({
    arrowsNav: true,
    arrowsNavAutoHide: false,
    fadeinLoadedSlide: false,
    controlNavigationSpacing: 0,
    controlNavigation: 'bullets',
    imageScaleMode: 'none',
    imageAlignCenter:false,
    blockLoop: true,
    loop: true,
    numImagesToPreload: 6,
    transitionType: 'fade',
    keyboardNavEnabled: true,
    block: {
      delay: 400
    }
  });
     $('a[href*=#feature-set]').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
      && location.hostname == this.hostname) {
        var $target = $(this.hash);
        $target = $target.length && $target
        || $('[name=' + this.hash.slice(1) +']');
        if ($target.length) {
          // var targetOffset = $target.offset().top;
          var targetOffset = $(window).height() - 220;
          $('html,body')
          .animate({scrollTop: targetOffset}, {duration: 1000, easing: 'easeInOutExpo'});
         return false;
        }
      }
    });
});

