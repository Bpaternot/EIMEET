// $(function() {
//   $(".pool-title").on("click", function(e) {
//     var pool = $(this).data("pool");
//     $(".wrapper-to-toggle-ranking, .wrapper-to-toggle-calendar, .banner-for-toggle-group").hide();
//     $(".wrapper-to-toggle-ranking[data-pool=" + pool + "], .wrapper-to-toggle-calendar[data-pool=" + pool + "], .banner-for-toggle-group[data-pool=" + pool + "]").show();
//   });
// });

// $(function() {
//   $(".fa-check-playground").on("click", function(e) {
//     $(this).removeClass("button-not-active-for-scores");
//     $(this).addClass("button-active-for-scores");
//   });
// });

$(function() {
    $(".pool-title").on("click", function(e) {
      var pool = $(this).data("pool");
      $(".pool-title").removeClass("active");
      $(this).addClass("active");
      $(".wrapper-to-toggle-ranking, .wrapper-to-toggle-calendar, .banner-for-toggle-group").hide();
      $(".wrapper-to-toggle-ranking[data-pool=" + pool + "], .wrapper-to-toggle-calendar[data-pool=" + pool + "], .banner-for-toggle-group[data-pool=" + pool + "]").show();
    });

    $(".fa-check-playground").on("click", function(e) {
      $(this).removeClass("button-not-active-for-scores");
      $(this).addClass("button-active-for-scores");
    });

    var currentSelection = $(".container-playground").data("current-selection");
    if (currentSelection === "group") {
      currentSelection = "A";
    }
    $(".pool-title[data-pool=[" + currentSelection + "]").click();
  });
