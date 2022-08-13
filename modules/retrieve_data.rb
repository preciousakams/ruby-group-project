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