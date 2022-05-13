require "json"
require "open-uri"

class DriversController < ApplicationController

def all
end



  url = "https://api.github.com/users/ssaunier"
  user_serialized = URI.open(url).read
  user = JSON.parse(user_serialized)

  puts "#{user["name"]} - #{user["bio"]}"


end
