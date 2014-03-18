class SearchExample
  def initialize
    @client = ASIN::Client.instance
  end

  def search_ruby_titles
    @client.search_keywords('ruby', 'rails').map { |item| item.item_attributes.title.truncate(25) }
  end
end
