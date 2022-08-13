require('json')
require_relative('retrieve_data')
module SaveDate
  include RetrieveData

  def save_genre(new_genre)
    data = retrieve_genres
    data.push({ id: new_genre.id, name: new_genre.name })
    File.write('./all_json_files/genres.json', JSON.generate(data))
  end

  def save_music_album(new_author, new_label, new_genre, new_music_album)
    data = retrieve_music_albums
    save_genre(new_genre)
    save_label(new_label)
    save_author(new_author)
    data.push(
      {
        id: new_music_album.id, on_spotify: new_music_album.on_spotify,
        publish_date: new_music_album.publish_date, archived: new_music_album.archived, label: new_label.id,
        genre: new_genre.id, author: new_author.id
      }
    )
    File.write('./all_json_files/music_albums.json', JSON.generate(data))
  end
end
