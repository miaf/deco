require 'rails_helper'

RSpec.describe "managing user profile", type: :feature do

	it 'user log in' do
		visit '/'
		click_link 'Log in'
		within '#log_in' do
			fill_in 'login_name', with: 'alex'
			fill_in 'password', with: 'alex'
		end
		click_button 'Log in'

		expect(page).to have_content("Alex")
	end
end