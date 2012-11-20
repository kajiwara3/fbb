class ConfirmationsController < Devise::ConfirmationsController
  layout false
  def after_confirmation_path_for(resource_name, resource)
    # mail send
    ReportMailer.wifi_password_information(current_user).deliver
    # redirect
    wellcome_path
  end
end
