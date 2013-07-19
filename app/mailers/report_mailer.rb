# coding: utf-8
class ReportMailer < ActionMailer::Base
  default from: "info@fbb.ne.jp"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.wifi_password_information.subject
  #
  def wifi_password_information(user)
    @user = user
    mail subject: "【フルーツネットWi-Fiサービス】ご利用登録完了のお知らせ",
         to: @user.email,
         from: 'info@fbb.ne.jp'
  end
end
