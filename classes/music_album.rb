class MusicAlbum
  attr_reader :album_name, :artist_name, :publish_date, :on_spotify

  def initialize(album_name, artist_name, _publish_date, on_spotify)
    @album_name = album_name
    @artist_name = artist_name
    @on_spotify = on_spotify
  end
end
