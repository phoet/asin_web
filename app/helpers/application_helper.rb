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
end
