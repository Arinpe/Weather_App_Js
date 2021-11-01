require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:car) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:car_id) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:city) }
  end
end
