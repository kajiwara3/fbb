# coding: utf-8
0.upto(4) do |idx|
  AgeGroup.create(
    address_group_code: idx + 1,
    description: description[idx % 5]
  )
end
