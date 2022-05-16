require "open-uri"
require "net/http"
require "json"

class DriversController < ApplicationController

  def index
    @drivers = Driver.all
  end

  url = URI("http://ergast.com/api/f1/drivers?=123")

  http = Net::HTTP.new(url.host, url.port);
  request = Net::HTTP::Get.new(url)

  response = http.request(request)
  puts response.read_body

  end
end
