module UsersHelper
  def access_levels
    %w[admin editor contributor]
  end
  
  def user_is_editor?
    current_user.access_level == "editor" or current_user.access_level == "admin" if current_user
  end
end
