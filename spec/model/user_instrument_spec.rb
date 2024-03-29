require 'rails_helper'

RSpec.describe UserInstrument, :type => :model do
  it { should belong_to(:user) }
  it { should belong_to(:instrument) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:instrument_id) }
  it { should validate_presence_of(:skill_level) }
end
