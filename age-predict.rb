require "http"

puts "Enter you're name and we'll use demographics to predict your age"

name = gets.chomp

response = HTTP.get("https://api.agify.io?name=#{name}")



age_data = response.parse(:json)

puts "if your name is #{age_data["name"]}, you might be #{age_data["age"]} years old."