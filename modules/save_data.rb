require('json')
require_relative('retrieve_data')
module SaveDate
  include RetrieveData

  def save_game(new_author, new_label, new_genre, new_game)
    data = retrieve_games
    save_genre(new_genre)
    save_label(new_label)
    save_author(new_author)
    data.push(
      {
        id: new_game.id, multiplayer: new_game.multiplayer, last_played_at: new_game.last_played_at,
        publish_date: new_game.publish_date, archived: new_game.archived, label: new_label.id,
        genre: new_genre.id, author: new_author.id
      }
    )
    File.write('./all_json_files/games.json', JSON.generate(data))
  end
end
