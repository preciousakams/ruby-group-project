require_relative('../classes/game')

describe Game do
  before :each do
    @game = Game.new('yes', Time.new(2015), publish_date: Time.new(2009))
    @game1 = Game.new('yes', Time.new(2010), publish_date: Time.new(2005))
    @game2 = Game.new('no', Time.new(2015), publish_date: Time.new(2020))
    @game3 = Game.new('yes', Time.new(2022), publish_date: Time.new(2022))
  end

  context 'Create a game' do
    it 'returns a new object' do
      expect(@game).to be_an_instance_of(Game)
    end

    it 'return collect data' do
      expect(@game.multiplayer).to eql('yes')
      expect(@game.last_played_at.year).to eql(2015)
      expect(@game.publish_date.year).to eql(2009)
      expect(@game.archived).to eql(nil)
    end
  end

  context 'Test can_be_archived? method' do
    it "return true if both parent's method and last_played_at is return true" do
      expect(@game1.can_be_archived?).to eql(true)
    end

    it "return false if parent's method returns false AND last_played_at return true" do
      expect(@game2.can_be_archived?).to eql(false)
    end

    it "return false if parent's method returns true AND last_played_at return false" do
      expect(@game3.can_be_archived?).to eql(false)
    end
  end
end
