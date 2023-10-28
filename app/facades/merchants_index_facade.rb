class MerchantsIndexFacade
  def initialize
    @merchants = fetch_merchants
  end

  def fetch_merchants
    response = BackendService.new.all_merchants
    response.map { |merchant| Merchant.new(merchant) }
  end
end