require 'rails_helper'

RSpec.describe "signing up users", type: :feature do
	let(:user){FactoryGirl.create(:user)}
	scenario "become a member" do
		visit '/'
		click_link 'Join us'
		expect(current_path).to eq(sign_up_path)
		expect(page).to have_content("Registration")
		within '#new_user' do
			fill_in 'user_first_name', with: user.first_name
			fill_in 'user_last_name', with: user.last_name
			fill_in 'user_date_of_birth', with: user.date_of_birth
			fill_in 'user_place_of_birth', with: user.place_of_birth
			fill_in 'user_id_reference', with: user.id_reference
			select('Option', :from => 'user_id_ref_type')
			# fill_in 'user_id_ref_type', with: user.id_ref_type
			fill_in 'user_id_ref_made_at', with: user.id_ref_made_at
			fill_in 'user_id_ref_expired_at', with: user.id_ref_expired_at
			fill_in 'user_email', with: user.email
			fill_in 'user_password', with: "password"
			fill_in 'user_password_confirmation', with: "password"
			fill_in 'user_nationality', with: user.nationality
			fill_in 'user_country', with: user.country
			fill_in 'user_town', with: user.town
			fill_in 'user_quarter', with: user.quarter
			fill_in 'user_street', with: user.street
			fill_in 'user_mobile', with: user.mobile
			fill_in 'user_telephone', with: user.telephone
			fill_in 'user_fax', with: user.fax
			fill_in 'user_description', with: user.description
			attach_file('user_image_profile', 'E:/links/22.png')
		end
		click_button "Submit"
		expect(page).to have_content("Thank you. Your request has been submitted")
		expect(page).to have_content("A confirmation email is seen to your mail box")
	end

end