require 'json'

module ListLabel
  include FetchData

  def list_labels
    if fetch_labels.empty?
      puts 'No labels available'
    else
      fetch_labels.map do |label|
        puts "id: #{label['id']} title: #{label['title']} color: #{label['color']}"
      end
    end
  end
end
