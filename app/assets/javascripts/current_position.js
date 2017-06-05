$(document).ready(function(){

  var geocoder = new google.maps.Geocoder;

  $("#get_current_position").click(function(e) {
    e.preventDefault();
    $("#tournament_address").val("Looking for your position...")
    navigator.geolocation.getCurrentPosition(foundLocation);
  });

  // navigator.geolocation.getCurrentPosition(foundLocation, noLocation);

  function foundLocation(position) {
    var lat = position.coords.latitude;
    var lon = position.coords.longitude;
    $("#tournament_address").val("Position found...")

    geocodeLatLng(geocoder, { lat: lat, lng: lon });

    // $("#business-current-location, #people-current-location").remove();
    // $("#Near-Me")
    //   .watermark("Current Location")
    //   .after("<input type='hidden' name='business-current-location' id='business-current-location' value='"+userLocation+"' />");
    // $("#people-Near-Me")
    //   .watermark("Current Location")
    //   .after("<input type='hidden' name='people-current-location' id='people-current-location' value='"+userLocation+"' />");
  }


  function geocodeLatLng(geocoder, position) {
    geocoder.geocode({'location': position}, function(results, status) {
      if (status === 'OK') {
        address = results[0]
        if (address) {
          $("#tournament_address").val(address.formatted_address)
        } else {
          window.alert('No results found');
        }
      } else {
        window.alert('Geocoder failed due to: ' + status);
      }
    });
  }
  // function noLocation() {
  //   $("#Near-Me").watermark("Could not find location");
  //   $("#people-Near-Me").watermark("Could not find location");
  // }
    // debugger
});//end DocReady
