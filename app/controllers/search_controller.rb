class SearchController < ApplicationController
  def index
    @stations = NrelService.new(params[:q]).alt_fuel_stations_by_zip_code_location

    @stations = @stations[:fuel_stations].map do |station_data|
      Station.new(station_data)
    end
  end
end
