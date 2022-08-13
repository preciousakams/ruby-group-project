module UserInput
  def request_author(owner)
    puts "#{owner} First Name:"
    first_name = gets.chomp
    puts "#{owner} Last Name:"
    last_name = gets.chomp
    [first_name, last_name]
  end

  def request_game
    puts 'Is this game for multiple players?(yes/no):'
    multiplayer = gets.chomp
    puts 'Last played at (year):'
    last_played_at = gets.chomp
    puts 'Year of publication:'
    publish_date = gets.chomp
    [multiplayer, last_played_at, publish_date]
  end

  def request_genre(element)
    puts "#{element} Genre"
    gets.chomp
  end

  def request_label(element)
    puts "#{element} Title:"
    title = gets.chomp
    puts "#{element} Label Color:"
    color = gets.chomp
    [title, color]
  end

  def request_music_ulbum
    puts 'Is the album on Spotify?(true/false):'
    on_spotify = gets.chomp
    puts 'Year of publication:'
    publish_date = gets.chomp
    [on_spotify, publish_date]
  end
end
