module ApplicationHelper
  def title
    "ASIN-WEB"
  end
  
  def subtitle
    "examples using the ASIN gem!"
  end
  
  def nav_items
    {
      'item_lookup' => 'Item Lookup',
      'item_search' => 'Item Search',
      'add_cart'    => 'Add Cart',
      'config'      => 'Config'
    }
  end
end
