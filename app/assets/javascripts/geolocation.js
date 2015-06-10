function geolocationSuccess(position) {
  console.log(position)
  var latitude = position.coords.latitude;
  var longitude = position.coords.longitude;

  $.ajax({
    url: '/camps',
    type: 'GET', 
    dataType: 'script', 
    data: {
      longitude: longitude,
      latitude: latitude
    }
  })

}

function geolocationError() {
  var locationError = $('<p class="error">Unable to find your location</p>');
  $('#current_location').after(locationError);
}

$(document).on('page:load ready', function() {
  $('#current_location').on('click', function(ev) {
    ev.preventDefault();

    if ("geolocation" in navigator) {
      navigator.geolocation.getCurrentPosition(geolocationSuccess, geolocationError);
    } else {
      alert("Get a better browser!!!");
    }
  })

});