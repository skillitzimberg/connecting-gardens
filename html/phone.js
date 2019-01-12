$.fn.slideToggleOld = $.fn.slideToggle;
$.fn.slideToggle = function(...args) {
    return this.each(function() {
        if($(this).attr('style') && $(this).css('display') == 'none') {
            $(this).slideDown(...args);
        } else {
            $(this).slideToggleOld(...args);
        }
    });
}
