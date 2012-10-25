// Login Form

$(function() {
    var button = jQuery('#loginButton');
    var box = jQuery('#loginBox');
    var form = jQuery('#loginForm');
    button.removeAttr('href');
    button.mouseup(function(login) {
        box.toggle();
        button.toggleClass('active');
    });
    form.mouseup(function() { 
        return false;
    });
    jQuery(this).mouseup(function(login) {
        if(!(jQuery(login.target).parent('#loginButton').length > 0)) {
            button.removeClass('active');
            box.hide();
        }
    });
});
