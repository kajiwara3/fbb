# coding: utf-8
fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]

0.upto(9) do |idx|
  User.create(
    name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    gender_id: idx % 2 + 1,
    age_group_id: idx % 5,
    address_group_id: idx % 5,
    email: "test#{idx}@a.com",
    password: "password",
    password_confirmation: "password"
  )
end
