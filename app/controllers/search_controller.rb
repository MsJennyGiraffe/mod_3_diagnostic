class SearchController < ApplicationController
  def index
    @zipcode = params[:q]
    @station = NrelService.new.get_station
  end
end
