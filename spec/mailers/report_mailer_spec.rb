# coding: utf-8
require "spec_helper"

describe ReportMailer do
  describe "wifi_password_information" do
    before(:each) do
      @wifi_account = FactoryGirl.create(:wifi_account)
      @mail = ReportMailer.wifi_password_information @wifi_account.user
    end

    it "renders the headers" do
      @mail.subject.should eq("フルーツネット：WiFiサービス接続情報")
      @mail.to.should eq(["user_wifi@a.jp"])
      @mail.from.should eq(["info@fbb.com"])
    end
  end
end