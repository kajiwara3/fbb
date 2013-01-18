# coding: utf-8
require "spec_helper"

describe ReportMailer do
  describe "wifi_password_information" do
    it "renders the headers" do
      wifi_account = Factory(:wifi_account)
      mail = ReportMailer.wifi_password_information wifi_account.user

      mail.subject.should eq("フルーツネット：WiFiサービス接続情報")
      mail.to.should eq(["user_wifi@a.jp"])
      mail.from.should eq(["info@fbb.com"])
    end

#    it "renders the body" do
#    print "-------------------4 \n"
#      mail.body.encoded.should match("Hi")
#    end
  end
end
