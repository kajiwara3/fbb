# coding: utf-8
0.upto(49) do |idx|
  WifiAccount.create(
    sign_in_code: "ssid_aabbccdd#{idx + 1}",
    sign_in_pass: "password_#{idx + 1}"
  )
end
