# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true

# here starts javascript for spotify cards ->
# Spotify Embed API JavaScript
pin "@spotify/player", to: "https://open.spotify.com/cdn/embed.bundle.js", preload: true

# Spotify Embed API CSS
pin "@spotify/player/styles", to: "https://open.spotifycdn.com/cdn/build/embed/embed.6245f081.css", preload: true
