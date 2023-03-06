def time
  Time.new.strftime("%H:%M:%S")
end

def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health} in #{time}"
end

puts say_hello("anna", 30)
puts say_hello("jorge")
puts say_hello("clara", 45)