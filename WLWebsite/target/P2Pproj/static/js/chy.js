(function($) {
  $.fn.menumaker = function(options) {
    var cssmenu = $(this),
      settings = $.extend({
        title: "Menu",
        format: "dropdown",
        sticky: false
      }, options);
    return this.each(function() {
      cssmenu.prepend('<div id="menu-button"><span class="menu"><img alt="" src="/image/nav-icon.png"></span></div>');
      $(this).find("#menu-button").on('click', function() {
        $(this).toggleClass('menu-opened');
        var mainmenu = $(this).next('ul');
        if (mainmenu.hasClass('open')) {
          mainmenu.hide().removeClass('open');
        } else {
          mainmenu.show().addClass('open');
          if (settings.format === "dropdown") {
            mainmenu.find('ul').show();
          }
        }
      });
      cssmenu.find('li ul').parent().addClass('has-sub');
      multiTg = function() {
        cssmenu.find(".has-sub").prepend('<span class="submenu-button"></span>');
        cssmenu.find('.submenu-button').on('click', function() {
          $(this).toggleClass('submenu-opened');
          if ($(this).siblings('ul').hasClass('open')) {
            $(this).siblings('ul').removeClass('open').hide();
          } else {
            $(this).siblings('ul').addClass('open').show();
          }
        });
      };
      if (settings.format === 'multitoggle') multiTg();
      else cssmenu.addClass('dropdown');
      if (settings.sticky === true) cssmenu.css('position', 'fixed');
      resizeFix = function() {
        if ($(window).width() > 768) {
          cssmenu.find('ul').show();
        }
        if ($(window).width() <= 768) {
          cssmenu.find('ul').hide().removeClass('open');
        }
      };
      resizeFix();
      return $(window).on('resize', resizeFix);
    });
  };

  $(document).ready(function() {
    $("#cssmenu").menumaker({
      title: "Menu",
      format: "multitoggle"
    });
    $("#cssmenu").prepend("<div id='menu-line'></div>");
    var foundActive = false,
      activeElement, linePosition = 0,
      menuLine = $("#cssmenu #menu-line"),
      lineWidth, defaultPosition, defaultWidth;
    $("#cssmenu > ul > li").each(function() {
      if ($(this).hasClass('active')) {
        activeElement = $(this);
        foundActive = true;
      }
    });
    if (foundActive === false) {
      activeElement = $("#cssmenu > ul > li").first();
    }
    defaultWidth = lineWidth = activeElement.width();
    defaultPosition = linePosition = activeElement.position().left;
    menuLine.css("width", lineWidth);
    menuLine.css("left", linePosition);
    $("#cssmenu > ul > li").hover(function() {
      activeElement = $(this);
      lineWidth = activeElement.width();
      linePosition = activeElement.position().left;
      menuLine.css("width", lineWidth);
      menuLine.css("left", linePosition);
    }, function() {
      menuLine.css("left", defaultPosition);
      menuLine.css("width", defaultWidth);
    });

    var isIn = false;
    var timer;
    $(".huozhu-join").hover(function() {
      $(".huozhu-sub").css('display', 'block');
    }, function() {
      $(".huozhu-sub").css('display', 'block');
      timer = setTimeout(function() {
        if (!isIn) {
          $(".huozhu-sub").css('display', 'none');
        }
      }, 300)
    });

    $(".huozhu-sub").hover(function() {
      isIn = true;
      clearTimeout(timer);
      $(this).css('display', 'block');
    }, function() {
      isIn = false;
      $(this).css('display', 'none');
    });

    $('a.popup').popup && $('a.popup').popup({
      markup: '<div class="popup"><p style="margin-bottom: 10px;">请扫描二维码下载APP</p><div class="popup_content"/></div>'
    });

  });
})(jQuery);