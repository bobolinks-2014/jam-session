class Instrument < ActiveRecord::Base
  has_many :user_instruments
  has_many :users

end
