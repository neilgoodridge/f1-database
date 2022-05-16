require "open-uri"
require "net/http"
require "json"

class DriversController < ApplicationController

  def index
    @drivers = Driver.all
  end

end
