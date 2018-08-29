class NrelPresenter
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def fuel_stations
    service(@zip_code).alt_fuel_stations_by_zip_code_location[:fuel_stations].map do |station_data|
      Station.new(station_data)
    end
  end


  private

  def service(params)
    NrelService.new(params)
  end
end
