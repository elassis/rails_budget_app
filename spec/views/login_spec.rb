require 'rails_helper'

RSpec.describe 'User Validation', type: :system do
  describe 'LogIn page' do
    it 'shows the right content' do
      visit new_user_session_path
      sleep(3)
      expect(page).to have_field('Email')
      expect(page).to have_field('Password')
      expect(page).to have_selector(:link_or_button, 'Log in')
    end
  end
end
