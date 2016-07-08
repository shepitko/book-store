require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:biography) }
  end
  it { should have_and_belong_to_many(:books) }
end
