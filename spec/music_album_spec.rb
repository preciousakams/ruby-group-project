require_relative('../classes/music_album')

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new(true,publish_date: Time.new(2009))
    @music_album1 = MusicAlbum.new(true, publish_date: Time.new(2005))
    @music_album2 = MusicAlbum.new(true, publish_date: Time.new(2020))
    @music_album3 = MusicAlbum.new(false,publish_date: Time.new(1999))
  end

  context 'Create a music_album' do
    it 'returns a new object' do
      expect(@music_album).to be_an_instance_of(MusicAlbum)
    end

    it 'return collect data' do
      expect(@music_album.on_spotify).to eql(true)
      expect(@music_album.publish_date.year).to eql(2009)
      expect(@music_album.archived).to eql(nil)
    end
  end

  context 'Test can_be_archived? method' do

    it "return true if both parent's method and on_spotify is return true" do
      expect(@music_album1.can_be_archived?).to eql(true)
    end

    it "return false if parent's method returns false AND on_spotify return true" do
      expect(@music_album2.can_be_archived?).to eql(false)
    end

    it "return false if parent's method returns true AND on_spotify return false" do
      expect(@music_album3.can_be_archived?).to eql(false)
    end
  end
end
