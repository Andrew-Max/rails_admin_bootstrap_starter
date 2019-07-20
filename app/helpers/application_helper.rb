module ApplicationHelper
  def user_is_admin?
    ["admin", "superadmin"].include? current_user.role
  end

  def user_is_superadmin?
    current_user.role == "superadmin"
  end
end
