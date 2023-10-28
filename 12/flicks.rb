class Movie
  attr_reader :rank
  # attr_writer :title
  attr_accessor :title

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
  end

  def thums_up
    @rank += 1
  end

  def thums_down
    @rank -= 1
  end

  def to_s
    "#{@title}'s has a rank of #{@rank}"
  end
end

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

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

playlist_1 = Playlist.new("kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play

playlist_2 = Playlist.new("fozzie")
playlist_2.add_movie(movie_3)

movie_4 = Movie.new("gremlins", 7)
playlist_2.add_movie(movie_4)
playlist_2.play


  # number_rolled = 7

 






# case
# when number_rolled < 3
#   movie_1.thums_down
#   puts "#{movie_1.title} got 👎"
# when number_rolled < 5
#   puts "#{movie_1.title} got skipped!"
# else
#   movie_1.thums_up
#   puts "#{movie_1.title} got 👍"
# end










# number_rolled = 4
# if number_rolled < 3
#   movie_1.thums_down
#   puts "#{movie_1.title} got 👎"
# elsif number_rolled < 5
#   puts "#{movie_1.title} got skipped!"
# else
#   movie_1.thums_up
#   puts "#{movie_1.title} got 👍"
# end


# puts movie_1.title
# movie_1.title = "gooonies"
# puts movie_1.title
# puts movie_1.rank

# puts movie_1
# movie_1.thums_up
# puts movie_1
# movie_1.thums_up
# puts movie_1
# # puts movie_1.inspect

# movie_2 = Movie.new("ghostbusters", 9)
# puts movie_2
# movie_2.thums_down
# puts movie_2
# movie_3 = Movie.new("goldfinger")
# puts movie_3
