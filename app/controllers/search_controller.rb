class SearchController < ApplicationController
  def index
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&location=#{params[:q]}&radius=6&limit=10&api_key=fxoT3RSpBaRGvRIrtQXywpB3eRLaKSKl6asyzNZ8"

    @stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    @stations = NrelService.new(params[:q]).alt_fuel_stations_by_zip_code_location

    @stations = @stations.map do |station_data|
      Station.new(station_data)
    end
  end
end
