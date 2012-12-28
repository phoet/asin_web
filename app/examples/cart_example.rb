class CartExample
  def initialize
    @client = ASIN::Client.instance
  end

  def checkout_url
    @client.create_cart(asin: '1430218150', quantity: 1).url
  end
end
