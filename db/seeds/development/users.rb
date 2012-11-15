# coding: utf-8
fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
address_group = ["住所１", "住所２", "住所３", "住所４", "住所５"]

0.upto(9) do |idx|
  User.create(
    name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    gender: idx % 2 + 1,
    age_group: idx % 5,
    address_group: address_group[idx % 5],
    email: "test#{idx}@a.com",
    password: "password",
    password_confirmation: "password"
  )
end
