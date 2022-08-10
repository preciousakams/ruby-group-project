require './book'
require './fetch_book'
require 'json'

module ListBook
include FetchBook

def list_books
  if fetch_books.empty?
    puts 'No books available'
  else
    fetch_books.map { |book| puts "publisher: #{book['publisher']} cover_state: #{book['cover_state']} author: #{book['author']} publish_date: #{book['publish_date']}" }
  end 
end