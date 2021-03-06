module MemoHelper
  def lookup_title
    Memo::It.memo { LookupExample.new.lookup_item_title }
  rescue
    "an error occured: #{$!}"
  end

  def search_titles
    titles = Memo::It.memo { SearchExample.new.search_ruby_titles }
    titles.map { |word| word.truncate(30) }.to_sentence
  rescue
    "an error occured: #{$!}"
  end

  def checkout_url
    Memo::It.memo { CartExample.new.checkout_url }
  rescue
    "an error occured: #{$!}"
  end

  def node_name
    Memo::It.memo { NodeExample.new.node_name }
  rescue
    "an error occured: #{$!}"
  end
end
