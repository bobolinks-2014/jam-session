class UserInstrument < ActiveRecord::Base
  belongs_to :user
  belongs_to :instrument

  acts_as_taggable_on :genres

  validates_presence_of :user_id, :instrument_id, :skill_level
end
