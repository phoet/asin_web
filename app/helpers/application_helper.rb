module ApplicationHelper
  def title
    "ASIN-WEB"
  end
  
  def subtitle
    "examples using the ASIN gem!"
  end
  
  def nav_items
    ['install', 'config', 'lookup', 'search', 'cart', 'node']
  end
  
  def cite(text)
    content_tag(:cite, "\"#{text}\"")
  end
end
