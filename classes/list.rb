require_relative('../modules/retrieve_data')
class List
  include RetrieveData

  def list_all_books
    if retrieve_books.empty?
      puts 'There is no book!'
    else
      retrieve_books.each_with_index do |book, index|
        label = retrieve_labels.find { |item| item['id'] == book['label'] }
        puts "#{index + 1}."
        puts " Book Title: #{label['title']}"
        puts " Book Publisher: #{book['publisher']}"
        puts " Year of publication: #{Time.new(book['publish_date']).year}"
      end
    end
  end

  def list_all_music_albums
    if retrieve_music_albums.empty?
      puts 'There is no music_album!'
    else
      retrieve_music_albums.each_with_index do |music, index|
        label = retrieve_labels.find { |item| item['id'] == music['label'] }
        puts "#{index + 1}."
        puts " Album Title: #{label['title']}"
        puts " Is on Spotify?: #{music['on_spotify']}"
        puts " Year of publication: #{Time.new(music['publish_date']).year}"
      end
    end
  end

  def list_all_movies
    puts 'There is no movies!'
  end

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

  def list_all_genres
    if retrieve_genres.empty?
      puts 'There is no genres!'
    else
      retrieve_genres.each_with_index do |genre, index|
        puts "#{index + 1}."
        puts " Name: #{genre['name']}"
      end
    end
  end

  def list_all_labels
    if retrieve_labels.empty?
      puts 'There is no labels!'
    else
      retrieve_labels.each_with_index do |label, index|
        puts "#{index + 1}."
        puts " Label Title: #{label['title']}"
        puts " Label Color: #{label['color']}"
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

  def list_all_sources
    puts 'There is no sources!'
  end
end
