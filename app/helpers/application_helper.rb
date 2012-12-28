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

  def highlight(file)
    file = Rails.root.join(file)
    CodeRay.highlight_file(file).html_safe
  end
end
