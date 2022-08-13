require './item'
class Book < Item
  attr_accessor :publisher, :cover_state, :archived

  def initialize(publisher = 'Unknown', cover_state = 'Unknown',
                 publish_date: Time.now, archived: nil, id: rand(1..1000))
    super(publish_date, archived: archived, id: id)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
