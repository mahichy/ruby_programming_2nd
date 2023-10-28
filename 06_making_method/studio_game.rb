def say_hello(name, health = 100)
  "I'm #{name.capitalize} with a health of #{health}"
end



puts say_hello("finn", 60)
puts say_hello("lucy", 90)
puts say_hello("jase")
puts say_hello("alex", 125)