require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :username }

  it "should work" do
    expect(20).to be >10
  end

end
