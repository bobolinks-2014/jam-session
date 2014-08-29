class UserInstrument < ActiveRecord::Base
  belongs_to :user
  belongs_to :instrument

  validates :skill_level, presence: true
  validates :user_id, presence: true
  validates :instrument_id, presence: true

end
