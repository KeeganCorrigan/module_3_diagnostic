require "rails_helper"

describe NrelService do
	it "exists" do
		service = NrelService.new

		expect(service).to be_a(NrelService)
	end

	context "instance methods" do
		context "#alt_fuel_stations_by_zip_code_location" do
			it "can get top 10 closest alt fuel stations by zip code" do
        service = NrelService.new
				result = service.alt_fuel_stations_by_zip_code_location("80203")

				expect(result).to be_a(Hash)

				expect(result).to have_key(:fuel_stations)
				expect(result[:fuel_stations].first).to have_key(:station_name)
        expect(result[:fuel_stations].first).to have_key(:fuel_type_code)
				expect(result[:fuel_stations].first).to have_key(:street_address)
				expect(result[:fuel_stations].first).to have_key(:distance)
				expect(result[:fuel_stations].first).to have_key(:access_days_time)
			end
		end
	end
end
