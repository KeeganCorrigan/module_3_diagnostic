class NrelService
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def alt_fuel_stations_by_zip_code_location
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?fuel_type=LPG,ELEC&location=#{@zip_code}&radius=6&limit=10&api_key=fxoT3RSpBaRGvRIrtQXywpB3eRLaKSKl6asyzNZ8"

    JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end
end
