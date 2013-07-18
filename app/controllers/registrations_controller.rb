class RegistrationsController < Devise::RegistrationsController
  include WifiAccountManager

  def after_sign_up_path_for(resource)
    @user = current_user
    # wifi accountの設定
    set_wifi_accout_to_user(@user)
    # mail send
    ReportMailer.wifi_password_information(@user).deliver
    # redirect to this url
    wellcome_path
  end

  def edit
    render layout: 'application'
  end
end