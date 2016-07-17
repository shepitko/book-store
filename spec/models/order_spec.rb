require 'rails_helper'

RSpec.describe Order, type: :model do
    context 'validations' do
     it { should validate_presence_of(:state) }
     it { should validate_presence_of(:sum) }
  end
  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:billing_address) }
    it { should belong_to(:shipping_address) }
    it { should belong_to(:coupon) }
    it { should belong_to(:delivery) }
    it { should belong_to(:credit_card) }
    it { should have_many(:order_items) }
  end
end
