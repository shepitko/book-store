require 'rails_helper'

RSpec.describe CreditCard, type: :model do
  context 'validations' do
     it { should validate_presence_of(:card_number) }
     it { should validate_presence_of(:month) }
     it { should validate_presence_of(:year) }
     it { should validate_presence_of(:cvv) }
  end
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:orders) }
  end
end
