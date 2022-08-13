require_relative '../item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date, :archived

  def initialize(on_spotify, publish_date: Time.now, archived: nil, id: rand(1..1000))
    super(publish_date, archived: archived, id: id)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end
