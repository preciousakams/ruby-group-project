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


end
