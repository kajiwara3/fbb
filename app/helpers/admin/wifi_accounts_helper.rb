module Admin::WifiAccountsHelper
  def user_id_link(user_id)
    if user_id == nil
      return '-'
    end
    user = User.find_by_id(user_id)
    return link_to user_id, [:admin, user]
  end
end
