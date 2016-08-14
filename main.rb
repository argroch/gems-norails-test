# Only needed for ruby 1.8.x
require 'rubygems'

# The part that activates bundler in your app
require 'bundler/setup' 

# require your gems as usual
# require 'geocoder'
require 'httparty'

puts "What's your address?"
address = gets.chomp

results = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&key=#{ENV['google_api_key']}")

neighborhood = results["results"][0]["address_components"][2]["long_name"]

puts neighborhood