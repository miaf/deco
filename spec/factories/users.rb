FactoryGirl.define do
  factory :user do
    first_name "Alex"
	last_name "Miaffo"
	date_of_birth "2015-07-28"
	place_of_birth "Yaounde"
	nationality "Cameroonian"
	id_ref_type "NIC"
	id_ref_numb "1234567890123"
	id_ref_made_at "Comissariat 6"
	id_ref_expired_at "2020-07-28"
	password_hash "password"
	password_salt "password"
	login_name "bedel"
	email "a@a.com"
	mobile "123456789"
	telephone "987654321"
	fax "147258369"
	country "Cameroon"
	town "Yaounde"
	quarter "Obili"
	street "Rue alex"
	description "Litle about myself"
	image_profile "\link\1.png"
	activated false
	email_confirmed false
	confirm_token "token"
  end

end
