# coding: utf-8
fnames = ["ic-net管理者"]
gnames = ["太郎"]

0.upto(1) do |idx|
  Administrator.create(
    name: "#{fnames} #{gnames}",
    email: "admin#{idx}@a.com",
    password: "password",
    password_confirmation: "password"
  )
end