require_relative('../classes/author')

describe Author do
  before :each do
    @author = Author.new('John', 'Doe')
    @item = Item.new(2010)
  end

  context 'Create an Author' do
    it 'returns a new object' do
      expect(@author).to be_an_instance_of(Author)
    end

    it 'return collect data' do
      expect(@author.first_name).to eql('John')
      expect(@author.last_name).to eql('Doe')
    end
  end

  context 'add_item method' do
    it 'add the input item to the collection of items' do
      @author.add_item(@item)
      expect(@author.items).to include(@item)
    end
    it 'set object of parent to item' do
      @author.add_item(@item)
      expect(@item.authors).to be(@author)
    end
  end
end
