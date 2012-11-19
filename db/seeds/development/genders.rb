# coding: utf-8
description = ["男性", "女性"]
0.upto(1) do |idx|
  Gender.create(
    gender_code: idx + 1,
    caption: description[idx % 2]
  )
end
