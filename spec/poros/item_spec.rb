require 'rails_helper'

RSpec.describe Item do
  it "exists" do
    data = {
      name: "item name",
      description: "item description",
      unit_price: 10.23,
      merchant_id: 1
    }
    item = Item.new(data)

    expect(item).to be_an Item
    expect(item.name).to eq(data[:name])
    expect(item.description).to eq(data[:description])
    expect(item.unit_price).to eq(data[:unit_price])
  end
end