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

Map.prototype.addMarker = function(latitude, longitude, markerImage) {
  var options = {
    position: {lat: latitude, lng: longitude},
    map: this.canvas,
  }

  if (markerImage) {
    options.icon = markerImage;
  }

  var myMarker = new google.maps.Marker(options);
  this.markers.push(myMarker);
}

Map.prototype.removeMarker = function(marker) {
  // remove marker from map
  marker.setMap(null);

  var index = this.markers.indexOf(marker);
  this.markers.splice(index, 1);
}
  
Map.prototype.findMarker = function(latitude, longitude) {
  return marker;
}

$(document).on('page:load ready', function() {
  if ($('#map-canvas').length) {
    var latitude = $('#map-canvas').data('latitude');
    var longitude = $('#map-canvas').data('longitude');
    var customIconImage = "http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"

    var myMap = new Map($('#map-canvas')[0]);
    myMap.init(latitude, longitude);
    myMap.addMarker(latitude, longitude);

    if (window.nearbys) {
      nearbys.forEach(function(coord) {
        myMap.addMarker(parseFloat(coord.latitude), parseFloat(coord.longitude), customIconImage);
      });
    }
  }
});