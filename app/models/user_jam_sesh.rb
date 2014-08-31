class UserJamSesh < ActiveRecord::Base
  belongs_to :user
  belongs_to :jam_sesh
end
