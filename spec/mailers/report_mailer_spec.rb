require "spec_helper"

describe ReportMailer do
  describe "wifi_password_information" do
    let(:mail) { ReportMailer.wifi_password_information }

    it "renders the headers" do
      mail.subject.should eq("Wifi password information")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
