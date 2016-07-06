require_relative '../feature_helper'

feature 'User sign in' do
  before do 
    logout(:user)
  end
  scenario 'Registered user try to sign in' do 
    user = create(:user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'

    expect(page).to have_content('Signed in successfully')
    expect(current_path).to eq(root_path)
  end

  scenario 'non-registered user try to sign in' do
    visit new_user_session_path
    fill_in 'Email', with: FFaker::Internet.email
    fill_in 'Password', with: Devise.friendly_token.first(8)
    click_on 'Sign in'

    expect(page).to have_content('Invalid Email or password')
    expect(current_path).to eq(new_user_session_path)
  end

end