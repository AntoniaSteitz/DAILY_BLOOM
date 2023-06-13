import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="spotify-iframe"
export default class extends Controller {
  static values = {
    uri: String
  }
  connect() {
    window.onSpotifyIframeApiReady = (IFrameAPI) => {
      let options = {
        width: 200,
        height: 400,
        uri: this.uriValue
      };
      let callback = (EmbedController) => {};
      IFrameAPI.createController(this.element, options, callback);
    }
  }
}


// window.onSpotifyIframeApiReady = (IFrameAPI) => {
//   let element = document.getElementById('embed-iframe');
//   let options = {
//     width: 200,
//     height: 400,
//     uri: 'spotify:episode:7makk4oTQel546B0PZlDM5'
//   };
//   let callback = (EmbedController) => {};
//   IFrameAPI.createController(element, options, callback);
// }
