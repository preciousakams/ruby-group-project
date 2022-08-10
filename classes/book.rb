require '../item'
class Book
  def initialize(publisher, cover_state, publish_date = Time.year)
    @id = rand(1..100)
    @publisher = publisher
    @cover_state = cover_state
    @publish_date = publish_date
  end
  
  def can_be_archived?
    true if Time.now.year - @publish_date.year > 10 || @cover_state == 'bad'
  end
end