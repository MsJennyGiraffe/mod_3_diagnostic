class SearchController < ApplicationController
  def index
    @zipcode = params[:q]
    service = NrelService.new
    @station = service.stations
  end
end
