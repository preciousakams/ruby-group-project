require 'json'
module FetchBook
  def fetch_books
    books = []
    books = JSON.parse(File.read('./all_json_files/books.json')) if File.exist?('./all_json_files/books.json')
    books
  end

  def fetch_labels
    labels = []
    labels = JSON.parse(File.read('./all_json_files/labels.json')) if File.exist?('./all_json_files/labels.json')
    labels
  end
end
