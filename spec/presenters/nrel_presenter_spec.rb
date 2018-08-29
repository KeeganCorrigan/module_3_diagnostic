require "rails_helper"

describe NrelPresenter do
  describe "instance methods" do
    describe ".fuel_stations" do
      it "returns station objects" do
        presenter = NrelPresenter.new("80203")

        expect(presenter.fuel_stations.count).to eq(10)
				expect(presenter.fuel_stations.first).to be_a(Station)
      end
    end
  end
end
