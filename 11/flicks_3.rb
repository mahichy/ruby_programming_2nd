def movie_info(title, rank)
  stars = "⭐️" * rank
  "#{title.capitalize} has a rank of #{rank}: #{stars}"
end
puts movie_info("goonies", 10)
puts movie_info("ghostbusters", 9)

movie_title = "goldfinger"
movie_rank = 8
puts movie_info(movie_title.capitalize, movie_rank)
puts movie_title
