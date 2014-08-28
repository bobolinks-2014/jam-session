require_relative '../spec_helper.rb'

describe Comment do
  it { should belong_to(:commenter).class_name("User") }
  it { should belong_to(:receiver).class_name("User") }
end
