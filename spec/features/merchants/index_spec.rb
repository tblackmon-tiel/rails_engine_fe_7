require 'rails_helper'

RSpec.describe "Merchants Index", type: :feature do
  describe "When I visit the merchant index page", :vcr do
    it "displays a list of all merchants" do
      visit merchants_path

      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Watsica-Parisian")
      expect(page).to have_content("Fahey-Stiedemann")
    end
  end
end