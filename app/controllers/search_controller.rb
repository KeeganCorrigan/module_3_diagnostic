class SearchController < ApplicationController
  def index
    binding.pry
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&location=80203&radius=6&limit=10&api_key=fxoT3RSpBaRGvRIrtQXywpB3eRLaKSKl6asyzNZ8"

    @stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]

    @stations = @stations.map do |station_data|
      Station.new(station_data)
    end
  end
end
