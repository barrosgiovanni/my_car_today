import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {

    // console.log(this.markerValue)
    mapboxgl.accessToken = this.apiKeyValue;
    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/mapbox/streets-v12' // style URL
    });

    this.#addMarkerToMap()
    this.#fitMapToMarkers()
  }

  #addMarkerToMap() {
    // this.markerValue ((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ this.markerValue.lng, this.markerValue.lat ])
        .addTo(this.map)
    // })

  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markerValue.lng, this.markerValue.lat ])
  //   // marker => {
  //   //   bounds.extend([ marker.lng, marker.lat ])
  //   // }
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

}
