module MemoHelper
  def lookup_title
    memo { LookupExample.new.lookup_item_title }
  end

  def search_titles
    memo { SearchExample.new.search_ruby_titles }
  end

  def checkout_url
    memo { CartExample.new.checkout_url }
  end

  def node_name
    memo { NodeExample.new.node_name }
  end
end
