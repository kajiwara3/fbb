# coding: utf-8
fnames = ["管理者 佐藤", "管理者 鈴木", "管理者 高橋", "管理者 田中"]
gnames = ["太郎", "次郎", "花子　"]

0.upto(3) do |idx|
  Administrator.create(
    name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    email: "admin#{idx}@a.com",
    password: "$G6v#7AX",
    password_confirmation: "$G6v#7AX"
  )
end