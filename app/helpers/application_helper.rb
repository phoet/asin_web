module ApplicationHelper
  def title
    'ASIN-WEB'
  end

  def subtitle
    'examples using the ASIN gem'
  end

  def section(key)
    key = key.to_s
    content_tag(:section, content_tag(:h2, "#{key.capitalize}:") + render("home/examples/#{key}", key: key), id: key)
  end

  def highlight_css
    Rouge::Themes::Base16.mode(:light).render(scope: '.highlight').html_safe
  end

  def highlight(file)
    content_tag(:div, class: 'highlight') do
      source = File.read(Rails.root.join(file))
      formatter = Rouge::Formatters::HTMLLegacy.new
      lexer = Rouge::Lexers::Ruby.new
      formatter.format(lexer.lex(source)).html_safe
    end
  end
end
