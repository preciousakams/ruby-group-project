require_relative 'app'

def display_list
  puts 'WELCOME TO CATALOG OF MY THINGS APP!'
  puts ' Choose an option by entering a number:'
  puts "
    1. List all books
    2. List all music albums
    3. List all movies
    4. List of games
    5. List all genres (e.g 'Comedy', 'Thriller')
    6. List all labels (e.g. 'Gift', 'New')
    7. List all authors (e.g. 'Stephen King')
    8. List all sources (e.g. 'From a friend', 'Online shop')
    9. Add a book
    10. Add a music album
    11. Add a movie
    12. Add a game
    13. Exit"
end

def main
  App.new.options
end

main
