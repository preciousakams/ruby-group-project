require_relative('../modules/user_input')
require_relative('../modules/save_data')
require_relative('../modules/access_item')
require_relative('../item')
require_relative('../classes/game')
require_relative('author')

class Create
  include UserInput
  include AccessItem
  include SaveDate

  def create_item(received_class)
    Item.new(received_class)
  end

  def create_author(element)
    first_name, last_name = request_author(element)
    author = Author.new(first_name, last_name)
    item = create_item(author)
    author.add_item(item)
  end


  def create_game
    puts "Let's create a game!:"
    new_label = create_label('Game')
    new_author = create_author('Author')
    new_genre = create_genre('Game')
    multiplayer, last_played_at, publish_date = request_game
    new_game = Game.new(multiplayer, Time.new(last_played_at), publish_date: Time.new(publish_date))
    new_game.move_to_archive
    save_game(new_author, new_label, new_genre, new_game)
    puts 'Game created successfully.'
  end
end
