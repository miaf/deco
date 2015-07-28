class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :nationality
      t.string :id_ref_type
      t.string :id_ref_numb
      t.string :id_ref_made_at
      t.date :id_ref_expired_at
      t.string :password_hash
      t.string :password_salt
      t.string :login_name
      t.string :email
      t.string :mobile
      t.string :telephone
      t.string :fax
      t.string :country
      t.string :town
      t.string :quarter
      t.string :street
      t.text :description
      t.string :image_profile
      t.boolean :activated
      t.boolean :email_confirmed
      t.string :confirm_token

      t.timestamps null: false
    end
  end
end
