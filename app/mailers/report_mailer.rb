# coding: utf-8
class ReportMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.wifi_password_information.subject
  #
  def wifi_password_information(user)
    @greeting = "Hi"
    logger.debug user.email
    mail subject: "フルーツネット：WiFiサービス接続情報",
         to: user.email,
         from: 'kajiwara3@gmail.com'
  end
end
