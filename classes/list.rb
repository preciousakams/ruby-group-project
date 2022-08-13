require_relative('../modules/retrieve_data')
class List
  include RetrieveData


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
end


