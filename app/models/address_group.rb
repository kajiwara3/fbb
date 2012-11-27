class AddressGroup < ActiveRecord::Base
  attr_accessible :address_group_code, :caption
  validates :address_group_code, :caption, presence: true
end
