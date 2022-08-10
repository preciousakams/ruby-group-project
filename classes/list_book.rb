require './book'
require './fetch_book'
require 'json'

module ListBook
  include FetchBook

  def list_books
    if fetch_books.empty?
      puts 'No books available'
    else
      fetch_books.map do |book|
        puts "publisher: #{book['publisher']} cover_state: #{book['cover_state']} publish_date: #{book['publish_date']}"
      end
    end
  end
end
