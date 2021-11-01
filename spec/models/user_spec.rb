require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:appointments) }
    it { should have_many(:cars).through(:appointments) }
  end

  describe 'Validations' do
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }
  end
end
