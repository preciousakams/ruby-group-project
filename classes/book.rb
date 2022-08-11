require './item'
class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date = Time.now.year)
    super(id, publish_date, nil, nil)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    Time.now.year - @publish_date > 10 || @cover_state == 'bad'
  end
end
