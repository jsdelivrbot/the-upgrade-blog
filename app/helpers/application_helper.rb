module ApplicationHelper
  def title
    "The Upgrade"
  end
  
  def menu_link(text, path)
    link_to text, path, class: "#{params[:controller] == text.downcase ? 'active ' : ''}item"
  end
end
