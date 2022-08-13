require 'json'
require 'pry'

module SaveData
  def self.file_init(items)
    File.write("./all_json_files/#{items}.json", []) unless File.exist?("./all_json_files/#{items}.json")
    File.write("./all_json_files/#{items}.json", []) if File.empty?("./all_json_files/#{items}.json")
  end
  
  def self.save_music_albums(music_albums)
    file_init('music_albums')
    music_albums_array = JSON.parse(File.read('./all_json_files/music_albums.json'))

    music_albums.map do |music_album|
      music_albums_array <<
        { class_instance: 'MusicAlbum', id: music_album.id, album_name: music_album.album_name,
          artist_name: music_album.artist_name, publish_date: music_album.publish_date,
          on_spotify: music_album.on_spotify, genre: music_album.genre.name }
    end
    File.write('./all_json_files/music_albums.json', JSON.generate(music_albums_array))
  end
end
