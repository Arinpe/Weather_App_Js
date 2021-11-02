require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'Associations' do
    it { should have_many(:appointments) }
    it { should have_many(:users).through(:appointments) }
  end

  context 'Validations' do
   

    scenario { should validate_presence_of(:year) }
    scenario { should validate_presence_of(:description) }
    scenario { should validate_presence_of(:model) }
    scenario { should validate_presence_of(:make) }
    scenario { should validate_presence_of(:horsepower) }
    scenario { should validate_presence_of(:price) }
    scenario { should validate_presence_of(:img_url) }
  end
end
