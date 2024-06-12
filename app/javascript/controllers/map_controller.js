import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = { markers: Array, apiKey: String }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/municksouza/clxc79p2z0a5j01nxg5qia2q9"
    })

    const bounds = new mapboxgl.LngLatBounds()

    this.markersValue.forEach(marker => {
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map)

      bounds.extend([marker.lng, marker.lat])
    })

  }
}
