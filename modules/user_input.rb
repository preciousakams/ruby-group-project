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
end
