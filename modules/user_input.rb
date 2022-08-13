module UserInput
  def request_genre(element)
    puts "#{element} Genre"
    gets.chomp
  end

  def request_music_ulbum
    puts 'Is the album on Spotify?(true/false):'
    on_spotify = gets.chomp
    puts 'Year of publication:'
    publish_date = gets.chomp
    [on_spotify, publish_date]
  end
end
