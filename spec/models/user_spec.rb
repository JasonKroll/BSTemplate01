# require 'rails_helper'
require 'spec_helper'
require "cancan/matchers"

# describe User do
RSpec.describe User, type: :model do
  before(:all) do
    @admin = FactoryGirl.create(:user)
    @admin.admin = true
    @user = FactoryGirl.create(:user)
  end

  it "has a valid user factory" do
    @user.should be_valid
  end
  it "has a valid admin factory" do
    @admin.should be_valid
  end
end

