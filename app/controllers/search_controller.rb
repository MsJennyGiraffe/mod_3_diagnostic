class SearchController < ApplicationController
  def index
    @zipcode = params[:q]
    service = NrelService.new
    @station = service.get_station
  end
end
