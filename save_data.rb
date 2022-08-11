require 'json'
require './fetch_data'

module SaveData
  include FetchData

  def save_book(book)
    books = fetch_books
    books.push(publisher: book.publisher, cover_state: book.cover_state, publish_date: book.publish_date)
    File.write('./all_json_files/books.json', JSON.pretty_generate(books))
  end

  def save_label(label)
    labels = fetch_labels
    labels.push(id: label.id, title: label.title, color: label.color)
    File.write('./all_json_files/labels.json', JSON.pretty_generate(labels))
  end
end
