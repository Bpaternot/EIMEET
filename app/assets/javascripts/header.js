$(document).ready(function(){
  $(".input-address").click(function(){
    $("banner-toggle").removeClass("banner");
    $("banner-toggle").addClass("banner-active");
    $("banner-content-toggle").removeClass("banner-content");
    $("banner-content-toggle").addClass("banner-content-active");
  });
});
