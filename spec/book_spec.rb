require_relative '../classes/book'
describe Book do
  before do
    @book = Book.new('penguin', 'bad', 2010)
  end
  describe 'create a new book' do
    it 'should create a new instance of Book' do
      expect(@book).to be_an_instance_of Book
    end
    it 'should have a publisher' do
      expect(@book.publisher).to eq 'penguin'
    end
    it 'should have a cover state' do
      expect(@book.cover_state).to eq 'bad'
    end
    it 'should have a publish date' do
      expect(@book.publish_date).to be_a Integer
    end
    it '#can_be_archived? should return true if the book is older than 10 years' do
      expect(@book.can_be_archived?).to be true
    end
  end
end
