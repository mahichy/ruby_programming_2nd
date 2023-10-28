class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def boost
    @health += 15
  end

  def drain
    @health -= 10
  end

  def score
    @health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and score of #{score}"
  end
end





player_4 = Player.new("alex", 125)
puts player_4.name
player_4.name = "Alexander"
puts player_4.name
puts player_4.health
puts player_4.score
puts player_4

