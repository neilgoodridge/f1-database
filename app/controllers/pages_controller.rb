require "open-uri"
require "net/http"
require "json"

class PagesController < ApplicationController

  def drivers
    @drivers = Driver.all
  end

  def search
    @drivers = find_driver(params[:driver])
    unless drivers
      flash[:alert] = 'Driver not found'
      return render action: :index
    end
  end

end
