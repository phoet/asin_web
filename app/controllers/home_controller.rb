class HomeController < ApplicationController
  def index
    client = ASIN::Client.instance
    @items = client.lookup '1430218150'
  end
end
