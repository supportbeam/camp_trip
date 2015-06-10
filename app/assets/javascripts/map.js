function Map(mapId) {
  this.mapId = mapId;
  this.markers = [];
}

Map.prototype.init = function(latitude, longitude) {
  var options = {
    center: { lat: latitude, lng: longitude},
    zoom: 14,
    mapTypeId: google.maps.MapTypeId.ROAPMAP

  }
  this.canvas = new google.maps.Map(this.mapId, options);
}

Map.prototype.addMarker = function(latitude, longitude) {
  var options = {
    position: {lat: latitude, lng: longitude},
    map: this.canvas
  }

  var myMarker = new google.maps.Marker(options);
  this.markers.push(myMarker);
}


$(document).on('page:load ready', function() {
  if ($('#map-canvas').length) {
    var latitude = window.latitude;
    var longitude = window.longitude;

    var myMap = new Map($('#map-canvas')[0]);
    myMap.init(latitude, longitude);
    myMap.addMarker(latitude, longitude);
  }
});