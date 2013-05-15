class PagesController < ApplicationController
  # 個人情報保護方針の表示画面
  def privacy_policy
  end

  # Ruckus Wirelessへのログイン用フォーム
  # ログイン失敗時は、自動でここにリダイレクトされる
  def wifi_authentication
    @authenticate_url = Fbb::Application.config.authenticate_url
    render layout: 'devise_application'
  end
end
