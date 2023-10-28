def emojis(emoji= "🤠", number)
  emoji * number
end

def movie_info(title, rank = title.length)
  stars = emojis("⭐️", rank)
  "#{title.capitalize} has a rank of #{rank}: #{stars}"
end
puts movie_info("goonies", 10)
puts movie_info("ghostbusters", 9)

movie_title = "goldfinger"
movie_rank = 8
puts movie_info(movie_title.capitalize, movie_rank)
