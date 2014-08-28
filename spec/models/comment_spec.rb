require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it { should belong_to(:commenter).class_name("User") }
  it { should belong_to(:receiver).class_name("User") }
end
