require_relative '../spec_helper.rb'

describe Neighborhood do
  it { should have_many(:users) }
end
