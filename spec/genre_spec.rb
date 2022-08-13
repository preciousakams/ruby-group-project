
require_relative('../classes/genre')

describe Genre do
  before :each do
    @genre = Genre.new('John')
    @item = Item.new(2010)
  end

  context 'Create a genre' do
    it 'returns a new object' do
      expect(@genre).to be_an_instance_of(Genre)
    end

    it 'return collect data' do
      expect(@genre.name).to eql('John')
      expect(@genre.id).to be_between(0, 1000).inclusive
    end
  end

  context 'add_item method' do
    it 'add the input item to the collection of items' do
      @genre.add_item(@item)
      expect(@genre.items).to include(@item)
    end
    it 'set object of parent to item' do
      @genre.add_item(@item)
      expect(@item.genres).to be(@genre)
    end
  end
end
