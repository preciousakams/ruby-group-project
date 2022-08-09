class Item
  def initialize(genre, author, source, label, publish_date = Time.year)
    @id = rand(1..100)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end
end
