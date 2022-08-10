require '../item'
class Book < Item
  def initialize(publisher, cover_state, publish_date = Time.year)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if Time.now.year - @publish_date.year > 10 || @cover_state == 'bad'
  end
end
