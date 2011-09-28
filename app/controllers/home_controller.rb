class HomeController < ApplicationController
  def index
    @lookup_title = LookupExample.new.lookup_item_title
    @search_titles = SearchExample.new.search_ruby_titles
  end
end
