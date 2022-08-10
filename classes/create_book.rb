require 'json'
require './fetch_book'
require './save_book'

class Create
include SaveBook
include FetchBook

  def add_book
    print 'Enter book publisher: '
    publisher = gets.chomp
    print 'Enter book cover state (good, bad): '
    cover_state = gets.chomp
    print 'Enter book author: '
    author = gets.chomp
    print 'Enter book publish date: '
    publish_date = gets.chomp
    save_book(Book.new(publisher, cover_state, author, publish_date))
end