require_relative '../feature_helper'

feature 'Settings page', :js do

  scenario 'non-registered user hasn\'t access to this page' do
    visit '/settings'
    expect(current_path).to eq(new_user_session_path)
  end

  context 'if user registered' do
    let(:user){ create(:user) }

    before do
      logout(:user)
      login_as user
      visit '/settings'
    end

    scenario 'has access to path' do
      expect(current_path).to eq('/settings')
    end

    describe 'remove account' do
      scenario 'checkbox was checked' do
        click_on 'I understand that all data will be lost' 
        click_on 'PLEASE REMOVE MY ACCOUNT'
        expect(current_path).to eq(root_path)
      end

      scenario 'checkbox non-click' do
        click_on 'PLEASE REMOVE MY ACCOUNT'
        expect(page).to have_content('You didn\'t check checkbox')
      end
    end
    describe 'email' do
      let(:save_email){click_on 'save_email'}

      scenario 'not valid' do
        fill_in 'Email', with: 'bla-bla-bla'
        save_email
        expect(page).to have_content('invalid email')
      end

      scenario 'changed' do
        fill_in 'Email', with: 'new@email.com'
        save_email
        expect(page).to have_content('email was changed')
      end
    end

    describe 'edit password' do
      let(:save_password){click_on 'save_password'}

      scenario 'edit password' do
        fill_in 'current_password', with: user.password
        fill_in 'new_password', with: 'ZombieApocalypse'
        save_password
        expect(page).to have_content('password was changed')
      end

      scenario 'wrong password' do
        fill_in 'current_password', with: 'wrong pwd'
        fill_in 'new_password', with: 'new@email.com'
        save_password
        expect(page).to have_content('old password is wrong')
      end
      
      scenario 'length more than 6' do
        fill_in 'current_password', with: user.password
        fill_in 'new_password', with: 'short'
        save_password
        expect(page).to have_content('length password must be more than 6')
      end
    end

    scenario 'billing address'
    scenario 'shipping address'
  end
end