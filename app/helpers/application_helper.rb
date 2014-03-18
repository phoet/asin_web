module ApplicationHelper
  def title
    "ASIN-WEB"
  end

  def subtitle
    "examples using the ASIN gem"
  end

  def cite(text)
    content_tag(:cite, "\"#{text}\"")
  end

  def section(key)
    key = key.to_s
    content_tag(:section, content_tag(:h2, "#{key.capitalize}:") + render("home/examples/#{key}", key: key), id: key)
  end

  def highlight_css
    Rouge::Themes::Github.render(:scope => '.highlight').html_safe
  end

  def highlight(file)
    source = File.read(Rails.root.join(file))
    Rouge.highlight(source, 'ruby', 'html').html_safe
  end
end
