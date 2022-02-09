require 'rails_helper'

RSpec.describe 'Add category page', type: :system do
  describe 'add category page' do
    before do
      visit new_user_session_path
      user = User.create!(name: 'mat', email: 'mat@gmail.com', password: '123456')
      sleep(1)
      page.fill_in 'Email', with: 'mat@gmail.com'
      sleep(1)
      page.fill_in 'Password', with: '123456'
      sleep(1)
      click_button('Log in')
      sleep(3)
      click_button('add new category')
    end
    it 'should display new category text' do
      expect(page).to have_content('New Category')
    end
    it 'should create a new category' do
     page.fill_in 'group[name]', with: 'home'
     sleep(2)
     page.fill_in 'group[icon]', with: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2019%2F07%2F17%2Fmodern-home-exterior-gray-scheme-792ab713.jpg'
     sleep(2)
     click_button('Save category')
     expect(page).to have_content('home')
    end
  end
end
