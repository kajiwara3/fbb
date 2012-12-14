# coding: utf-8
class WifiAccount < ActiveRecord::Base
  belongs_to :user
  scope :not_reserved, where("user_id IS NULL")
end