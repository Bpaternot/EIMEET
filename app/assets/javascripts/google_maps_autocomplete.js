$(document).ready(function() {
  var tournament_address = $('#tournament_address').get(0);

  if (tournament_address) {
    var autocomplete = new google.maps.places.Autocomplete(tournament_address, { types: ['geocode'] });
    google.maps.event.addDomListener(tournament_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
