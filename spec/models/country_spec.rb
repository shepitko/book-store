require 'rails_helper'

RSpec.describe Country, type: :model do
  context 'validations' do
     it { should validate_presence_of(:name) }
 end
  context 'associations' do
    it { should have_many(:addresses) }
  end
end
