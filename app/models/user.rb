class User < ActiveRecord::Base
  EMAIL_REGEX = /[a-zA-Z0-9.-]*@[a-zA-Z0-9]*.[a-zA-Z0-9.]{3,5}/

   belongs_to :neighborhood
   has_many :user_instruments
   has_many :instruments, through: :user_instruments
   has_many :comments, foreign_key: "commenter_id"
   has_many :feedback, class_name: "Comment", foreign_key: "receiver_id"

   has_secure_password

   validates :email, format: EMAIL_REGEX, uniqueness: true
   validates_presence_of :email, :password, :neighborhood
   validates_confirmation_of :password
   validates_length_of :password, :in => 6..20, :on => create

   def full_name
      self.first_name + " " + self.last_name
   end



end
