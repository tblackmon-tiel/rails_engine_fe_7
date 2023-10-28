class MerchantShowFacade
  attr_reader :merchant
  
  def initialize(id)
    @merchant = build_merchant(id)
  end

  def build_merchant(id)
    service = BackendService.new
    merchant_data = service.merchant_details(id)
    item_data = service.merchant_items(id)
    Merchant.new(merchant_data[:data], item_data[:data])
  end
end