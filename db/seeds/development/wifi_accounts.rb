# coding: utf-8
0.upto(49) do |idx|
  WifiAccount.create(
    sign_in_code: "fbb#{sprintf('%02d', idx + 1)}",
    sign_in_pass: "#{sprintf('%04d', idx + 1)}"
  )
end
