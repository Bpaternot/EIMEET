$(document).ready(function(){
  $(".fa-bars").click(function(){
    $(this).toggleClass("hidden");
    $(".fa-times").toggleClass("hidden");
    $(".full-screen-menu").toggleClass("hidden");
  });

  $(".fa-times").click(function(){
    $(this).toggleClass("hidden");
    $(".fa-bars").toggleClass("hidden");
    $(".full-screen-menu").toggleClass("hidden");
  });

  $(".toggle-menu").click(function(){
    $(".toggle-menu-content").toggleClass("hidden");
  });
});
