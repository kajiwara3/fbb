# coding: utf-8
caption_list = ["紫波町内","盛岡・雫石エリア","花巻・北上・遠野エリア",
            "一関・平泉・奥州エリア","三陸海岸沿岸エリア", "八幡平・二戸エリア", "岩手県外"]
caption_list.each_with_index do |caption, idx|
  AddressGroup.create(
    address_group_code: idx + 1,
    caption: caption
  )
end
