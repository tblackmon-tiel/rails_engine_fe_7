class MerchantsController < ApplicationController
  def index
    conn = Faraday.new(url: "http://localhost:3000") do |f|
    end
    response = conn.get("/api/v1/merchants")

    @merchants = JSON.parse(response.body, symbolize_names: true)
  end

  def show
    conn = Faraday.new(url: "http://localhost:3000") do |f|
    end
    @merchant = JSON.parse(conn.get("/api/v1/merchants/#{params[:id]}").body, symbolize_names: true)
    @items = JSON.parse(conn.get("/api/v1/merchants/#{params[:id]}/items").body, symbolize_names: true)
  end
end