require 'json'
module RetrieveData
  def retrieve_authors
    authors = []
    authors = JSON.parse(File.read('./all_json_files/authors.json')) if File.exist?('./all_json_files/authors.json')
    authors
  end

  def retrieve_games
    games = []
    games = JSON.parse(File.read('./all_json_files/games.json')) if File.exist?('./all_json_files/games.json')
    games
  end

  def retrieve_genres
    genres = []
    genres = JSON.parse(File.read('./all_json_files/genres.json')) if File.exist?('./all_json_files/genres.json')
    genres
  end

  def retrieve_labels
    labels = []
    labels = JSON.parse(File.read('./all_json_files/labels.json')) if File.exist?('./all_json_files/labels.json')
    labels
  end

  def retrieve_music_albums
    music_albums = []
    if File.exist?('./all_json_files/music_albums.json')
      music_albums = JSON.parse(File.read('./all_json_files/music_albums.json'))
    end
    music_albums
  end
end
