(function($) { "use strict";

  $(function() {
    var header = $(".start-style");
    $(window).scroll(function() {    
      var scroll = $(window).scrollTop();
    
      if (scroll >= 10) {
        header.removeClass('start-style').addClass("scroll-on");
      } else {
        header.removeClass("scroll-on").addClass('start-style');
      }
    });
  });   
    
  //Animation
  
  $(document).ready(function() {
    $('body.hero-anime').removeClass('hero-anime');
  });

  //Menu On Hover
    
  $('body').on('mouseenter mouseleave','.nav-item',function(e){
      if ($(window).width() > 750) {
        var _d=$(e.target).closest('.nav-item');_d.addClass('show');
        setTimeout(function(){
        _d[_d.is(':hover')?'addClass':'removeClass']('show');
        },1);
      }
  }); 
  
$('.nav-link.dropdown-toggle').on('click', function() {
    $(this).next('.dropdown-menu').slideToggle();
});

$('.navbar-toggler').on('click', function() {
    $('.collapse').collapse('toggle');
});

$(document).ready(function() {
    $('#searchLink').on('click', function(event) {
        event.preventDefault(); // 링크의 기본 동작을 중단합니다.
        window.location.href = 'ResearchBook'; // ResearchBook.jsp로 이동합니다.
    });
});

  
  })(jQuery); 