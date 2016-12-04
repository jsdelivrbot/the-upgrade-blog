module MainHelper
    
  def post_filter(type, title, icon)
    link_to posts_path(filter: type), class: "item", remote: true do
      concat content_tag :i, nil, class: "#{icon} icon"
      concat title
    end
  end
end
