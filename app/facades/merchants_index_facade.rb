class MerchantsIndexFacade
  attr_reader :merchants
  
  def initialize
    @merchants = fetch_merchants
  end

  def fetch_merchants
    response = BackendService.new.all_merchants
    response[:data].map { |merchant| Merchant.new(merchant) }
  end
end