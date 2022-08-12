class Author
  attr_accessor :first_name, :last_name
  attr_reader :id, :items

  def initialize(first_name = 'Unknown', last_name = 'Unknown', id: nil)
    @first_name = first_name
    @last_name = last_name
    @id = id || rand(1...1000)
    @items = []
  end

  def add_item(item)
    @items << item
    item.authors = self
  end
end
