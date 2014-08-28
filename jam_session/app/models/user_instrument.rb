class UserInstrument < ActiveRecord::Base
  belongs_to :user
  belongs_to :instrument

  acts_as_taggable_on :tags
end
