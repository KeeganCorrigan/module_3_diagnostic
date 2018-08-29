require "rails_helper"

describe Station, type: :model do
  it "has attributes" do

    station_data =
                    {
                      fuel_type_code: "ELEC",
                      station_name: "UDR",
                      city: "Denver",
                      state: "CO",
                      street_address: "800 Acoma St",
                      zip: "80204",
                      distance: 0.31422,
                      access_days_time: "24 hours daily"
                    }

    station = Station.new(station_data)

    expect(station.name).to eq(station_data[:station_name])
    expect(station.address).to eq(station_data[:street_address])
    expect(station.fuel_types).to eq(station_data[:fuel_type_code])
    expect(station.distance).to eq(station_data[:distance])
    expect(station.access_times).to eq(station_data[:access_days_time])
  end
end
