class User < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :user_instruments
  has_many :instruments, through: :user_instruments
  has_many :comments, foreign_key: :commenter_id
  has_many :feedback, class_name: "Comment", foreign_key: :receiver_id
  # has_many :feedback, class_name: "Comment", foreign_key: :receiver_id

  has_secure_password

  validates :instrument_id, presence: true
  validates :email, presence: true
  validates :neighborhood, presence: true
end
