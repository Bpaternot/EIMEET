$(document).ready(function(){
  $(".fa-bars-navbar").click(function(){
    $(this).toggleClass("hidden");
    $(".fa-times-navbar").toggleClass("hidden");
    $(".full-screen-menu").toggleClass("hidden");
  });

  $(".fa-times-navbar").click(function(){
    $(this).toggleClass("hidden");
    $(".fa-bars-navbar").toggleClass("hidden");
    $(".full-screen-menu").toggleClass("hidden");
  });

  $(".toggle-menu").click(function(){
    $(".toggle-menu-content").toggleClass("hidden");
  });
});
