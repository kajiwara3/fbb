# coding: utf-8
description = ["住所１","住所２","住所３","住所４","住所５",]
0.upto(4) do |idx|
  AddressGroup.create(
    address_group_code: idx + 1,
    description: description[idx % 5]
  )
end
