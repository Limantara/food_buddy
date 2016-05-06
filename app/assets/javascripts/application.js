// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require materialize-sprockets
//= require materialize/extras/nouislider

$(document).ready(function() {

    /* Initialization for dropdowns */
    $(".dropdown-button").dropdown({
        belowOrigin: true, // Displays dropdown below the button
    });

    $('#user_picture').bind('change', function() {
        var size_in_megabytes = this.files[0].size / 1024 / 1024;
        if (size_in_megabytes > 5) {
            alert('Maximum file size is 5MB. Please choose a smaller file.');
        }
    });

    $('.comment-reply').click - >
        $(this).closest('.comment').find('.reply-form').toggle()
    return


});
