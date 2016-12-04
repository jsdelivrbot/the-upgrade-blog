module ApplicationHelper
  def title
    "The Upgrade"
  end
  
  def show_menu?
    true unless (params[:controller] == "main" and params[:action] == "index") or 
                params[:controller] == "sessions"
  end
  
  def menu_link(text, path, icon)
    link_to path, class: "#{params[:controller] == text.downcase ? 'active ' : ''}item" do
      "<i class='#{icon} icon'></i>".html_safe + text
    end
  end
end
