require_relative('./classes/list')
class App
  def initialize
    @list = List.new
  end

  def options
    loop do
      display_list
      option = gets.chomp.to_i
      if option <= 4
        first_collection(option)

      elsif option > 4 && option <= 8

        second_collection(option)

      elsif option > 8 && option <= 12
        third_collection(option)

      else
        break
      end
    end
    display_list
  end

  def first_collection(option)
    case option
    when 1
      @list.list_all_books
    when 2
      @list.list_all_music_albums
    when 3
      @list.list_all_movies
    when 4
      @list.list_all_games
    end
  end

  def second_collection(option)
    case option
    when 5
      @list.list_all_genres
    when 6
      @list.list_all_labels
    when 7
      @list.list_all_authors
    when 8
      @list.list_all_sources
    end
  end


  def third_collection(option)
    case option
    when 9
      @create.create_book
    when 10
      @create.create_music_album
    when 11
      @list.list_all_authors
    when 12
      @create.create_game
    end
  end

end
