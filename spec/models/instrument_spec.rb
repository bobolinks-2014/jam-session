require_relative '../spec_helper.rb'

describe Instrument do
  it { should have_many(:user_instruments) }
  it { should have_many(:users) }

end
