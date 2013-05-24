class PagesController < ApplicationController
  require 'net/http'
  require 'uri'
  layout 'devise_application', expect: 'pribacy_policy'

  # 個人情報保護方針の表示画面
  def privacy_policy
  end

  # Ruckus Wirelessへのログイン用フォーム
  # ログイン失敗時は、自動でここにリダイレクトされる
  def wifi_authentication
    @authenticate_url = Fbb::Application.config.authenticate_url
    @username = cookies[:wifi_username]
    @password = cookies[:wifi_password]
    @remember_me = cookies[:remember_me].empty? ? false : cookies[:remember_me]

    render layout: 'devise_application'
  end

  def authenticate
    @username = params['username']
    @password = params['password']
    @remember_me = params["remember_me"]

    cookies[:wifi_username] = {value: @username, expires: 1.month.from_now, httponly: true}
    cookies[:wifi_password] = {value: @password, expires: 1.month.from_now, httponly: true}
    cookies[:remember_me] = {value: @remember_me, expires: 1.month.from_now, httponly: true}
    if !@username.empty? && !@password.empty?
      response = nil
      uri = URI.parse Fbb::Application.config.authenticate_url
      response = Net::HTTP.post_form(uri, {username: @username, password: @password})
    end
    render 'authentication_success'
  end
end
