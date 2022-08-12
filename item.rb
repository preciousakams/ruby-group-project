class Item
  attr_accessor :id, :label, :publish_date

  def initialize(genre, author, source, label, publish_date = Time.now.year)
    @id = rand(1..100)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def add_author(author)
    author.add_item(self) unless author.items.include? self
  end
  
  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    Time.now.year - @publish_date.year > 10
  end
end
