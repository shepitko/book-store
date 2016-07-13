require 'rails_helper'

RSpec.describe Delivery, type: :model do
  context 'validations' do
     it { should validate_presence_of(:name) }
     it { should validate_presence_of(:cost) }
  end
  context 'associations' do
    it { should have_many(:orders) }
  end
end
