module ApplicationHelper
  def title
    "ASIN-WEB"
  end
  
  def subtitle
    "examples using the ASIN gem!"
  end
  
  def nav_items
    {
      'installation'  => 'Installation',
      'configuration' => 'Configuration',
      'item_lookup'   => 'Item Lookup',
      'item_search'   => 'Item Search',
      'add_cart'      => 'Add Cart',
    }
  end
  
  def code_scan(key, type=:ruby)
    CodeRay.highlight(self.class.const_get("CODE_#{key.upcase}".to_s), type).html_safe
  end
  
  CODE_GEM_INSTALL = <<-CODE
gem install asin
# optional dependencies
gem install httpclient
gem install rash
    CODE
  
  CODE_GEMFILE_INSTALL = <<-CODE
# Gemfile
gem 'asin'
# optional dependencies
gem 'httpclient'
gem 'rash'
    CODE

end
