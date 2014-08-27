class User < ActiveRecord::Base
   belongs_to :neighborhood
   has_many :user_instruments
   has_many :instruments, through: :user_instruments
   has_many :tags, through: :user_instruments
   has_many :comments, class_name: "Comment", foreign_key: "commenter_id"
   has_many :feedback, class_name: "Comment", foreign_key: "receiver_id"


   has_secure_password
end
