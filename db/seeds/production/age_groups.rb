# coding: utf-8
caption = ["12歳以下", "13～19歳", "20～34歳", "35～49歳", "50歳以上"]
0.upto(4) do |idx|
  AgeGroup.create(
    age_group_code: idx + 1,
    caption: caption[idx % 5]
  )
end
