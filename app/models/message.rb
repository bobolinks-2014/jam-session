class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates_presence_of :sender_id, :receiver_id, :content

  def format_date
    date = self.sesh_date
    date.month.to_s + "." + date.day.to_s + "." + date.year.to_s
  end

end
