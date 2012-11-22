class Admin::SessionsController < ::Devise::SessionsController
  def after_sign_in_path_for(fesource_or_scope)
    :admin_root
  end

  def after_sign_out_path_for(fesource_or_scope)
    :admin_root
  end
end