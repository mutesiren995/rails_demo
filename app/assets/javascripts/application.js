// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(function(){
  $(document).on("click", "#xxxx", function(){
    var name_value = $("#name").val();
    var phone_value = $("#phone").val();

    $.ajax({
      url: '/signup_event',
      type: 'POST',
      dataType: "json",
      data: {
        'name': name_value,
        'phone': phone_value
      },
      success: function(response){
        console.log(response.success)
        if(response.success===true){
          alert(response.msg);
          $('#eventModal').modal('hide')
        }else{
          alert(response.msg)
        }
      }
    })

    return false;
  });
})
