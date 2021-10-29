require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'Associations' do
    it { should have_many(:appointments) }
    it { should have_many(:users).through(:appointments) }
    it { should have_one_attached(:image) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:image) }
  end
end
