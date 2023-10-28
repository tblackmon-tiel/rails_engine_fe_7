require 'rails_helper'

RSpec.describe Merchant do
  it "exists" do
    data = {
      id: "1",
      type: "merchant",
      attributes: {
        name: "Test merchant"
      }
    }

    merchant = Merchant.new(data)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq(data[:attributes][:name])
    expect(merchant.items).to be_an Array
  end
end