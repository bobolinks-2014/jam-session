require 'rails_helper'

RSpec.describe User, :type => :model do
   it { should belong_to(:neighborhood) }
  it { should have_many(:user_instruments)}
  it { should have_many(:instruments).through(:user_instruments) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:neighborhood) }
end
