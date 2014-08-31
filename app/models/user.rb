class User < ActiveRecord::Base
    EMAIL_REGEX = /[a-zA-Z0-9.-]*@[a-zA-Z0-9]*.[a-zA-Z0-9.]{3,5}/
    attr_accessor :image

    belongs_to :neighborhood
    has_many :user_instruments
    has_many :instruments, through: :user_instruments
    has_many :comments, foreign_key: "commenter_id"
    has_many :feedback, class_name: "Comment", foreign_key: "receiver_id"
    has_many :received_messages, class_name: "Message", foreign_key: "receiver_id"
    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
    has_many :user_jam_seshes
    has_many :jam_seshes, through: :user_jam_seshes


    mount_uploader :image, ImageUploader

    has_secure_password

    validates :email, format: EMAIL_REGEX, uniqueness: true
    validates_presence_of :email, :password, :neighborhood
    validates_confirmation_of :password
    validates_length_of :password, :in => 6..20, :on => create

    def full_name
      self.first_name + " " + self.last_name
    end

    def get_partners
        jam_sesh_ids = self.user_jam_seshes.map { |x| x.jam_sesh_id }
        partners = []
        jam_sesh_ids.each do |id|
            UserJamSesh.where(jam_sesh_id: id).each do |jam_sesh|
                if jam_sesh.user_id != self.id
                    partners << jam_sesh.user
                end
            end
        end
        return partners
    end

end
