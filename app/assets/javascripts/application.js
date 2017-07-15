// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-validate
//= require datetimepicker
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require moment
//= require fullcalendar
//= require ckeditor-jquery
//= require_tree .


function showNotification(type = "", message = "", from = "bottom", align = "left") {

  $.notify({
    icon: "pe-7s-attention",
    message: message
  }, {
    type: type,
    timer: 3000,
    placement: {
      from: from,
      align: align
    }
  });
}

// $(document).on("ready turbolinks:load", function(e) {
  $('.ckeditor').ckeditor({
    // optional config
  });
// });
