require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  context 'validations' do
     it { should validate_presence_of(:quantity) }
     it { should validate_presence_of(:total) }
  end
  context 'associations' do
    it { should belong_to(:order) }
    it { should belong_to(:book) }
  end
end
