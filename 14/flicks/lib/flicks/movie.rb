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
    "#{@title} has a rank of #{@rank}"
  end
end

if __FILE__ == $0
  movie = Movie.new("star wars", 10)
  puts movie
end
