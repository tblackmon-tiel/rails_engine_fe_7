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
    expect(merchant.id).to eq(data[:id])
    expect(merchant.name).to eq(data[:attributes][:name])
    expect(merchant.items).to be nil
  end

  it "takes an optional argument to generate a list of items" do
    data = {
      id: "1",
      type: "merchant",
      attributes: {
        name: "Test merchant"
      }
    }

    items = [{
      name: "item name",
      description: "item description",
      unit_price: 10.23,
      merchant_id: 1
    }]

    merchant = Merchant.new(data, items)

    expect(merchant.items).to be_an Array
    expect(merchant.items.first.name).to eq(items.first[:name])
    expect(merchant.items.first.description).to eq(items.first[:description])
    expect(merchant.items.first.unit_price).to eq(items.first[:unit_price])
  end
end