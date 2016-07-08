require 'rails_helper'

RSpec.describe Review, type: :model do
  context 'validations' do
    it { should validate_presence_of(:rating) }
    it { should validate_presence_of(:text_review) }
    it { should validate_inclusion_of(:rating).in_range(1..5) }
  end
  context 'associations' do
    it { should belong_to(:book) }
    it { should belong_to(:user) }
  end
end
