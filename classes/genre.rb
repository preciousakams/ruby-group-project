class Genre
  attr_reader :items, :name

  def initialize(name)
    @id = rand(1..1000)
    @name = name
    @items = []
  end
end
