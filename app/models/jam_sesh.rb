class JamSesh < ActiveRecord::Base
  has_many :user_jam_seshes
  validates_presence_of :sesh_date

  def format_date
    date = self.sesh_date
    date.month.to_s + "." + date.day.to_s + "." + date.year.to_s
  end

  def get_users
    seshes = UserJamSesh.where(jam_sesh: self)
    seshes.map {|x| x.user }
  end

end
