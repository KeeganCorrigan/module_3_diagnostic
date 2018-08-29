require "rails_helper"

describe Station, type: :model do
  it "has attributes" do

    station_data = {"access_code"=>"public",
    "access_days_time"=>"24 hours daily",
    "access_detail_code"=>nil,
    "cards_accepted"=>nil,
    "date_last_confirmed"=>"2018-08-29",
    "expected_date"=>nil,
    "fuel_type_code"=>"ELEC",
    "groups_with_access_code"=>"Public",
    "id"=>66897,
    "open_date"=>nil,
    "owner_type_code"=>nil,

    "status_code"=>"E",
    "station_name"=>"UDR",
    "station_phone"=>"888-758-4389",
    "updated_at"=>"2018-08-29T08:58:51Z",
    "geocode_status"=>"GPS",
    "latitude"=>39.7300224,
    "longitude"=>-104.9883424,
    "city"=>"Denver",
    "intersection_directions"=>"816 ACOMA 1; For residents only - 5th Floor",
    "plus4"=>nil,
    "state"=>"CO",
    "street_address"=>"800 Acoma St",
    "zip"=>"80204",
    "country"=>"US",
    "bd_blends"=>nil,
    "e85_blender_pump"=>nil,
    "ev_connector_types"=>["J1772"],
    "ev_dc_fast_num"=>nil,
    "ev_level1_evse_num"=>nil,
    "ev_level2_evse_num"=>2,
    "ev_network"=>"ChargePoint Network",
    "ev_network_web"=>"http://www.chargepoint.com/",
    "ev_other_evse"=>nil,
    "hy_is_retail"=>nil,
    "hy_status_link"=>nil,
    "lpg_primary"=>nil,
    "ng_fill_type_code"=>nil,
    "ng_psi"=>nil,
    "ng_vehicle_class"=>nil,
    "access_days_time_fr"=>nil,
    "intersection_directions_fr"=>nil,
    "bd_blends_fr"=>nil,
    "groups_with_access_code_fr"=>"Public",
    "ev_network_ids"=>{"posts"=>["1:118249"]},
    "distance"=>0.31422,
    "distance_km"=>0.50569}

    station = Station.new(station_data)

    expect(station.name). to eq(station_data["name"])
    expect(station.name). to eq(station_data["street_address"])
    expect(station.name). to eq(station_data["fuel_type_code"])
    expect(station.name). to eq(station_data["distance"])
  end
end
