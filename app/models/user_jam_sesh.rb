class UserJamSesh < ActiveRecord::Base
  belongs_to :user
  belongs_to :jam_sesh

  validates_presence_of :user_id, :jam_sesh_id
end
