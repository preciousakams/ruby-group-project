require_relative '../classes/book'
describe Book do
  before do
    @book = Book.new('poppins', 'bad', publish_date: Time.new(2000))
  end
  describe 'create a new book' do
    it 'should create a new book' do
      expect(@book).to be_a Book
    end
    it 'should have a publisher' do
      expect(@book.publisher).to eq 'poppins'
    end
    it 'should have a cover state' do
      expect(@book.cover_state).to eq 'bad'
    end
    it 'should have a publish date' do
      expect(@book.publish_date.year).to eq 2000
    end
    it '#can_be_archived? should return true if the book is older than 10 years' do
      expect(@book.can_be_archived?).to be true
    end
  end
end

