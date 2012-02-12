module ApplicationHelper
  def dropdown_link(title)
    link_to(raw(title + content_tag("b", nil, :class => "caret")), "#", :class => "dropdown-toggle", :"data-toggle" => "dropdown")
  end

  def json_tag(name, obj=nil)
    obj ||= instance_variable_get(:"@#{name}")
    content_tag("script", obj.to_json.html_safe, :id => name, :type => "application/json")
  end
end
