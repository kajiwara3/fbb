class ConfirmationsController < Devise::ConfirmationsController
  # layout false
  layout "devise_application"
  include WifiAccountManager

  def after_confirmation_path_for(resource_name, resource)
    @user = current_user
    # wifi accountの設定
    set_wifi_accout_to_user(@user)
    # mail send
    ReportMailer.wifi_password_information(@user).deliver
    # redirect to this url
    wellcome_path
  end
end
