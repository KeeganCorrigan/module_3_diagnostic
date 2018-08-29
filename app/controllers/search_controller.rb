class SearchController < ApplicationController
  def index
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&location=80203&limit=10&api_key=fxoT3RSpBaRGvRIrtQXywpB3eRLaKSKl6asyzNZ8"

    
  end
end
