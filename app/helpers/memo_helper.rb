module MemoHelper
  def lookup_title
    Memo::It.memo { LookupExample.new.lookup_item_title }
  end

  def search_titles
    Memo::It.memo { SearchExample.new.search_ruby_titles }
  end

  def checkout_url
    Memo::It.memo { CartExample.new.checkout_url }
  end

  def node_name
    Memo::It.memo { NodeExample.new.node_name }
  end
end
