module ApplicationHelper
  def menu_link(text, path)
    link_to text, path, class: "#{params[:controller] == text.downcase ? 'active ' : ''}item"
  end
end
