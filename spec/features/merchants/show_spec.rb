require 'rails_helper'

RSpec.describe "Merchants Show", type: :feature do
  describe "When I visit the merchant show page", :vcr do
    it "displays a merchant with all of its items" do
      visit merchant_path(1)

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Description: Sunt eum id eius magni")
      expect(page).to have_content("Unit Price: 42.91")

      expect(page).to have_content("Item Et Cumque")
      expect(page).to have_content("Description: Ducimus id perferendis.")
      expect(page).to have_content("Unit Price: 395.15")

      expect(page).to have_content("Item Ea Voluptatum")
      expect(page).to have_content("Description: Sunt officia eum qui molestiae.")
      expect(page).to have_content("Unit Price: 323.01")
    end
  end
end