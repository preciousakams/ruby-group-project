class Genre
  attr_accessor :name, :id
  attr_reader :items

  def initialize(name = 'Unknown', id: rand(1..1000))
    @name = name
    @id = id
    @items = []
  end

  def add_item(item)
    @items << item
    item.genres = self
  end
end
