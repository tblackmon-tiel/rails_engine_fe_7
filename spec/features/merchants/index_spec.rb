require 'rails_helper'

RSpec.describe "Merchants Index", type: :feature do
  describe "When I visit the merchant index page", :vcr do
    it "displays a list of all merchants" do
      visit merchants_path

      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Watsica-Parisian")
      expect(page).to have_content("Fahey-Stiedemann")
    end

    it "each merchant name links to that merchant's show page" do
      visit merchants_path

      expect(page).to have_link("Schroeder-Jerde")
      click_link("Schroeder-Jerde")
      expect(page).to have_current_path(merchant_path(1))
    end
  end
end