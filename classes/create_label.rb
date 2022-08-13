require 'json'
require './fetch_data'
require './save_data'

class CreateLabel
  include SaveData
  include FetchData

  def add_label
    print 'Enter label title: '
    title = gets.chomp
    print 'Enter label color: '
    color = gets.chomp
    save_label(Label.new(id, title, color))
  end
end
