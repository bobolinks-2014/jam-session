class JamSesh < ActiveRecord::Base
  has_many :user_jam_seshes
  belongs_to :creator, class_name: "User"
  belongs_to :receiver, class_name: "User"
  validates_presence_of :sesh_date, :message => "Where's the sesh date?"
  validates_presence_of :name, :message => "Where's the sesh name?"
  validates_presence_of :creator_id, :message => "You gotta be logged in to send a message!"
  validates_presence_of :receiver_id

  def format_date
    date = self.sesh_date
    date.month.to_s + "." + date.day.to_s + "." + date.year.to_s
  end

  def get_users
    seshes = UserJamSesh.where(jam_sesh: self)
    seshes.map {|x| x.user }
  end

end
