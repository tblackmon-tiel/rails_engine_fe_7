class MerchantsController < ApplicationController
  def index
    @facade = MerchantsIndexFacade.new
  end

  def show
    # conn = Faraday.new(url: "http://localhost:3000")
    
    # @merchant = JSON.parse(conn.get("/api/v1/merchants/#{params[:id]}").body, symbolize_names: true)
    # @items = JSON.parse(conn.get("/api/v1/merchants/#{params[:id]}/items").body, symbolize_names: true)
    @facade = MerchantShowFacade.new(params[:id])
  end
end