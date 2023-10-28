class Merchant
  attr_reader :id, :name, :items

  def initialize(merchant_data, item_data = nil)
    @id = merchant_data[:id]
    @name = merchant_data[:attributes][:name]
    @items = build_items(item_data) if item_data
  end

  def build_items(data)
    data.map {|item| Item.new(item)}
  end
end