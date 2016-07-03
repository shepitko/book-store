require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe '.find_for_oauth' do
    let!(:user) { create(:user) }
    let(:auth_params) { {provider: 'facebook', uid: '123456'} }
    let(:auth) { OmniAuth::AuthHash.new auth_params }

    context "user already has authorization" do
      it "returns the user" do
        user.authorizations.create(auth_params)
        expect(User.find_for_oauth(auth)).to eq(user)
      end
    end

    context "without authorization" do
      let(:auth_params) { {provider: 'facebook', uid: '123456',
        info: {email: user.email} } }

      context 'registered user' do
        it "doesn't create new user" do
          expect { User.find_for_oauth(auth) }.to_not change(User,:count)
        end

        it "creates authorizations for user" do
          expect {
            User.find_for_oauth(auth)
          }.to change(user.authorizations, :count).by(1)
        end

        it "creates authorization with provider & uid" do
          authorization = User.find_for_oauth(auth).authorizations.first
          expect(authorization.provider).to eq(auth.provider)
          expect(authorization.uid).to eq(auth.uid)
        end

        it 'returns the user' do
          expect(User.find_for_oauth(auth)).to eq(user)
        end
      end
    end

    context "user doesn't exist" do
      let(:auth_params) { {provider: 'facebook', uid: '123456',
        info: {email: '123@user.com'} } }

      it "creates new user" do
        expect{
          User.find_for_oauth(auth)
        }.to change(User,:count).by(1)
      end

      it "returns new user" do
        expect(User.find_for_oauth(auth)).to be_a(User)
      end

      it "fills user email" do
        user = User.find_for_oauth(auth)
        expect(user.email).to eq('123@user.com')
      end

      it "creates authorization with provider & uid" do
        authorization = User.find_for_oauth(auth).authorizations.first
        expect(authorization.provider).to eq(auth.provider)
        expect(authorization.uid).to eq(auth.uid)
      end
    end
  end
end