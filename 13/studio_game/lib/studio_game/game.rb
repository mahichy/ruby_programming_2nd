class Game
  attr_reader :title, :players
  
  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "\nLet's play #{@title}!"
    puts "Before playing:"
    puts @players

    @players.each do |player|

      number_rolled = roll_die
    
      case number_rolled
      when 1..2
        player.drain
        puts "#{player.name} got drained 😩"
      when 3..4
        puts "#{player.name} got skipped"
      else
        player.boost
        puts "#{player.name} got boosted 😁"
      end
    end
    puts "\nAfter Playing:"
    puts @players
  end
  
end
