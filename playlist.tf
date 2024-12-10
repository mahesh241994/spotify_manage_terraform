data "spotify_search_track" "Maheshsidsriram" {
    artist = "Sid Sriram"
    limit = 10
}
data "spotify_search_track" "mangli"{
    artist ="Mangli"
    limit = 10
}
data "spotify_search_track" "Sameera_Bharadwaj" {
    artist = "Sameera Bharadwaj"
    limit = 10
}

resource "spotify_playlist" "Mahesh_Playlist" {
  name        = "Mahesh_Playlist"

  tracks = flatten([
    data.spotify_search_track.Maheshsidsriram.tracks[*].id,
    data.spotify_search_track.mangli.tracks[*].id,
    data.spotify_search_track.Sameera_Bharadwaj.tracks[*].id,
  ])
}
