# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  username               :string           default(""), not null
#  name                   :string
#  last_name              :string
#  bio                    :string
#  uid                    :string
#  ptovider               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username}
  it { should validate_length_of(:username).is_at_least(3).is_at_most(12) }

  describe "#validate_username_regex" do
    let(:user){FactoryBot.build(:user)}
	  it "should not allow username with numbers at the beginning" do
      user.username = "9dsfds"
	  	expect(user.valid?).to be_falsy
	  end

	  it "should not contain special characters" do
      user.username = "dsfsdv*"
      expect(user.valid?).to be_falsy
	  end

	end

end
