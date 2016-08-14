# require 'geocoder'
require 'httparty'

puts "What's your address?"
address = gets.chomp

results = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&key=#{ENV['google_api_key']}")

neighborhood = results["results"][0]["address_components"][2]["long_name"]

puts neighborhood