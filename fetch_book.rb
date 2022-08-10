require 'json'
module FetchBook
  def fetch_books
    books = []
    books = JSON.parse(File.read('./all_json_files/books.json')) if File.exist?('./all_json_files/books.json')
    books
  end
end
