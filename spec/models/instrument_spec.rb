require 'rails_helper'

RSpec.describe Instrument, :type => :model do
  it { should have_many(:user_instruments) }
  it { should have_many(:users) }
end
