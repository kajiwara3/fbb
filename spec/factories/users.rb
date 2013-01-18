# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do |a|
    a.name 'test_user'
    a.email 'test_@a.jp'
    a.gender { |user| user.association(:gender) }
    a.age_group { |age_group| age_group.association(:age_group) }
    a.address_group { |address_group| address_group.association(:address_group) }
    a.accepts_privacy_policy 'true'
    a.password 'password'
    a.encrypted_password 'password'
  end

  factory :user_wifi, class: User do
    name 'user_wifi'
    email 'user_wifi@a.jp'
    gender { |user| user.association(:gender) }
    age_group { |age_group| age_group.association(:age_group) }
    address_group { |address_group| address_group.association(:address_group) }
    accepts_privacy_policy 'true'
    password 'password'
    encrypted_password 'password'
  end
end
