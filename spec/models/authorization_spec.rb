require 'rails_helper'

RSpec.describe Authorization, type: :model do
  context 'validations' do
     it { should validate_presence_of(:uid) }
     it { should validate_presence_of(:provider) }
  end

  context 'associations' do
    it { should belong_to(:user) }
  end
end
