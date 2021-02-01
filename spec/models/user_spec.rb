require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Association' do
    it { should have_many(:favourites) }
    it { should have_many(:homes).through('favourites') }
  end

  describe 'Validate username and email' do
    it { should validate_uniqueness_of(:email) }
    it { should validate_length_of(:username).is_at_least(4) }
    it { should_not validate_length_of(:username).is_at_least(3) }
    it { should validate_length_of(:email).is_at_most(50) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
  end
end
