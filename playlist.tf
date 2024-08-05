resource "spotify_playlist" "Tamil_songs" {
  name = "Tamil"
  tracks = ["4zCH9qm4R2DADamUHMCa6O"]
}

data "spotify_search_track" "kumar" {
    artist = "anirudh ravichander"
    
}

resource "spotify_playlist" "kumar" {
    name = "kumar"
    tracks = [
              data.spotify_search_track.kumar.tracks[0].id,
              data.spotify_search_track.kumar.tracks[1].id,
              data.spotify_search_track.kumar.tracks[2].id
             ]
  
}