class AgeGroup < ActiveRecord::Base
  attr_accessible :age_group_code, :caption
  validates :age_group_code, :caption, presence: true
end
