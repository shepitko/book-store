require 'rails_helper'

RSpec.describe Address, type: :model do
  context 'validations' do
     it { should validate_presence_of(:first_name) }
     it { should validate_presence_of(:last_name) }
     it { should validate_presence_of(:street) }
     it { should validate_presence_of(:city) }
     it { should validate_presence_of(:zip) }
     it { should validate_presence_of(:telephone) }
  end
  context 'associations' do
    it { should belong_to(:country) }
  end
end
