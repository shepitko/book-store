require 'rails_helper'

RSpec.describe Coupon, type: :model do
  context 'validations' do
     it { should validate_presence_of(:code) }
     it { should validate_presence_of(:name) }
     it { should validate_presence_of(:coupon_type) }
     it { should validate_presence_of(:discount) }
     it { should validate_presence_of(:end_date) }
  end
  context 'associations' do
    it { should have_many(:orders) }
  end
end
