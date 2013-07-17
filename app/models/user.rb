# coding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  attr_accessor :accepts_privacy_policy
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation,
                  :remember_me, :gender_id, :age_group_id,
                  :address_group_id, :accepts_privacy_policy

  belongs_to :gender
  belongs_to :age_group
  belongs_to :address_group
  has_one :wifi_account

  validates :name, :email, :gender, :age_group, :address_group,
     presence: true, length: {maximum: 100}
  validates :password, presence: {on: :create}
  validates :accepts_privacy_policy, presence: {on: :create}
  validate :accepts_privacy_policy_valid?

  def accepts_privacy_policy_valid?
    errors.add(:accepts_privacy_policy,
      'ご同意いただけない場合は、当サービスをご利用いただけません') if accepts_privacy_policy == 'false'
  end

  def self.retrieve_by_name_or_email(condition)
    condition.strip!
    User.where('name like ? or email like ?', "%#{condition}%", "%#{condition}%")
  end
end
