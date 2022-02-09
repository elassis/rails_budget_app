require 'rails_helper'

RSpec.describe 'transaction index page', type: :system do
  describe 'transaction index page' do
    before do
      user = User.create!(name: 'mat', email: 'mat@gmail.com', password: '123456')
      Group.create!(name: 'home',icon:'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2019%2F07%2F17%2Fmodern-home-exterior-gray-scheme-792ab713.jpg',
      user_id:user.id)
      visit new_user_session_path
      sleep(1)
      page.fill_in 'Email', with: 'mat@gmail.com'
      sleep(1)
      page.fill_in 'Password', with: '123456'
      sleep(1)
      click_button('Log in')
      sleep(3)
      find('.category-container').click
    end
    it 'should display index transaction page' do
      expect(page).to have_selector(:link_or_button, 'add new transaction')
    end
    it 'should display transactions total' do
      expect(page).to have_content('total: 0')
    end
  end
end
