require_relative('../modules/retrieve_data')
class List
  include RetrieveData

  def list_all_games
    if retrieve_games.empty?
      puts 'There is no games!'
    else
      retrieve_games.each_with_index do |game, index|
        label = retrieve_labels.find { |item| item['id'] == game['label'] }
        puts "#{index + 1}."
        puts " Game Title: #{label['title']}"
        puts " Game had multiplayer?: #{game['multiplayer']}"
        puts " Last played at: ##{Time.new(game['last_played_at']).year}"
        puts " Year of publication: #{Time.new(game['publish_date']).year}"
      end
    end
  end

  def list_all_authors
    if retrieve_authors.empty?
      puts 'There is no authors!'
    else
      retrieve_authors.each_with_index do |author, index|
        puts "#{index + 1}."
        puts " Author First Name: #{author['first_name']}"
        puts " Author Last Name: #{author['last_name']}"
      end
    end
  end
end
