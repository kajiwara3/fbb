# coding: utf-8
module WifiAccountManager
  def set_wifi_accout_to_user(user)
    wifi_account = WifiAccount.not_reserved.first
    user.wifi_account = wifi_account
  end
end