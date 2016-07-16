require_relative '../feature_helper'

feature 'access to rails_admin', :js do
  scenario 'user hasn\'t admin role ' do 
    login_as create(:user)
    visit '/admin'
    expect(page).to have_content('You are not authorized to access this page')
    expect(current_path).to eq(root_path)
  end
  scenario 'user has admin role' do 
    login_as create(:admin)
    visit '/admin'
    expect(current_path).to eq('/admin')
  end
  scenario 'non-registered user' do 
    visit '/admin'
    expect(current_path).to eq(new_user_session_path)
  end
end