
class Playlist
  attr_reader :name, :movies

  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "*" * 30
    puts "#{@name}'s playlist:"
    puts "\nbefore watching:"
      puts @movies
      puts "\nThums_up:"

      @movies.each do |movie|

        number_rolled = roll_die

        case number_rolled 
        when 1..2
          movie.thums_down
          puts "#{movie.title} got 👎"
        when 3..4
          puts "#{movie.title} got skipped!"
        else
          movie.thums_up
          puts "#{movie.title} got 👍"
        end
      end

      puts "\nAfter watching:"
      puts @movies
  end
end