class Item
  attr_accessor :publish_date, :id, :archived, :labels, :authors, :genres

  def initialize(publish_date, id: rand(1..100), archived: false)
    @id = id
    @genres = nil
    @authors = nil
    @labels = nil
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_label(label)
    label.add_item(self) unless label.items.include? self
  end

  def add_genre(genre)
    genre.add_item(self) unless genre.items.include? self
  end

  private

  def can_be_archived?
    Time.now.year - @publish_date.year > 10
  end
end
