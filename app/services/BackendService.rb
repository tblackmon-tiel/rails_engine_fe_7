class BackendService
  def conn
    Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def all_merchants
    get_url("/api/v1/merchants")
  end

  def merchant_details(id)
    get_url("/api/v1/merchants/#{id}")
  end

  def merchant_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end
end