require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'Validate fields' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:price) }
  end

  describe 'Associations' do
    it { should have_many(:favourites) }
  end
end
