# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wifi_account do |w|
    w.sequence(:sign_in_code) { |n| "code #{n}" }
    w.sign_in_pass 'pass'
    w.user { |wifi| wifi.association(:user_wifi) }
  end
end