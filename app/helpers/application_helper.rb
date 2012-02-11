module ApplicationHelper
  def dropdown_link(title)
    link_to(raw(title + content_tag("b", nil, :class => "caret")), "#", :class => "dropdown-toggle", :"data-toggle" => "dropdown")
  end
end
