require 'rails_helper'

RSpec.describe 'home page', type: :system do
  describe 'Home page' do
    before do
      user = User.create!(name: 'mat', email: 'mat@gmail.com', password: '123456')
      visit new_user_session_path
      sleep(1)
      page.fill_in 'Email', with: 'mat@gmail.com'
      sleep(1)
      page.fill_in 'Password', with: '123456'
      sleep(1)
      click_button('Log in')
      sleep(3)
    end
    it 'should display successfully logged in' do
      expect(page).to have_content('Signed in successfully')
    end
    it 'should display list of categories' do
      expect(page).to have_content('List of categories')
    end
    it 'should display add category button' do
      expect(page).to have_selector(:link_or_button, 'add new category')
    end

  end
end
