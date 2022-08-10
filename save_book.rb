require 'json'
require './fetch_book'

module SaveBook
  def save_book(book)
    books = fetch_book
    books.push(publisher: book.publisher, cover_state: book.cover_state, publish_date: book.publish_date)
    File.write('./all_json_files/books.json', JSON.pretty_generate(books))
  end
end
