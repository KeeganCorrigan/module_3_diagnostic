require "rails_helper"

describe "a user" do
  describe "searches for stations" do
    it "returns a list of the 10 closest stations" do

      visit '/'

      within(".navbar") do
        fill_in :q, with: "80203"
      end

      click_on "Locate"

      expect(current_path).to eq(search_path)

      expect(page).to have_css(".station", count: 10)

      expect(page).to_not have_content("BD")
      expect(page).to_not have_content("CNG")
      expect(page).to_not have_content("E85")
      expect(page).to_not have_content("HY")
      expect(page).to_not have_content("LNG")

      within(first(".station")) do
  			expect(page).to have_css(".name")
  			expect(page).to have_css(".address")
  			expect(page).to have_css(".fuel_types")
  			expect(page).to have_css(".distance")
        expect(page).to have_css(".access_times")
  		end
    end
  end
end
