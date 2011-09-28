class LookupExample
  def initialize
    @client = ASIN::Client.instance
  end
  
  def lookup_item_title
    asin = '1430218150'
    @client.lookup(asin).first.title
  end
end