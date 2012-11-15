# coding: utf-8
description = ["男性", "女性"]
0.upto(1) do |idx|
  User.create(
    gender_code: idx,
    description: description[idx % 2]
  )
end
