require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
     it { should validate_presence_of(:title) }
     it { should validate_presence_of(:short_description) }
     it { should validate_presence_of(:full_description) }
     it { should validate_presence_of(:image) }
     it { should validate_presence_of(:price) }
  end
  context 'associations' do
    it { should have_and_belong_to_many(:authors) }
    it { should have_many(:reviews) }
    it { should belong_to(:category) }
  end
end
