$(document).ready(function(){
  $(".toggle-button-filter").click(function(){
    $(".toggle-button-filter").removeClass("number-players-button-active");
    $(".toggle-button-filter").addClass("btn-primary");
    $(this).addClass("number-players-button-active");
    $(this).removeClass("btn-primary");
  });
});
