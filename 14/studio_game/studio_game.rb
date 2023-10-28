require_relative "lib/studio_game/game"
require_relative "lib/studio_game/player"




player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)



players = [player_1, player_2, player_3, player_4]

game = Game.new("winner takes all")
game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.play

player_5 = Player.new("alvin", 100)
player_6 = Player.new("simon", 60)
player_7 = Player.new("theo", 125)

chipmunks = Game.new("Chipmunks")
chipmunks.add_player(player_5)
chipmunks.add_player(player_6)
chipmunks.add_player(player_7)
chipmunks.play

# number_rolled = rand(1..6)

# case number_rolled
# when 1..2
#   player_1.drain
#   puts "#{player_1.name} got drained 😩"
# when 3..4
#   puts "#{player_1.name} got skipped"
# else
#   player_1.boost
#   puts "#{player_1.name} got boosted 😁"
# end

# if number_rolled < 3
#   player_1.drain
#   puts "#{player_1.name} got drained 😩"
# elsif number_rolled < 5
#   puts "#{player_1.name} got skipped"
# else
#   player_1.boost
#   puts "#{player_1.name} got boosted 😁"
# end





