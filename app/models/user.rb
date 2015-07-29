class User < ActiveRecord::Base

	attr_accessor :password
	# validates_presence_of :password
	validates_confirmation_of :password
	before_save :encrypt_password  

	mount_uploader :image_profile, ImageUploader

	validates_presence_of :first_name, message: ""
	validates_length_of :first_name, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :last_name, message: ""
	validates_length_of :last_name, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :date_of_birth

	validates_presence_of :place_of_birth, message: ""
	validates_length_of :last_name, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :nationality, message: ""
	validates_length_of :nationality, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :id_ref_type, message: ""
	validates_length_of :id_ref_type, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :id_ref_numb, message: "Must be present"
	validates_length_of :id_ref_numb, in: 5..15, message: "between 5 and 30 characters"

	validates_presence_of :id_ref_made_at, message: ""
	validates_length_of :id_ref_made_at, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :id_ref_expired_at

	validates_presence_of :login_name, message: "Must not be blanc"
	validates_length_of :login_name, in: 1..30, message: "between 3 and 30 characters"
	validates_uniqueness_of :login_name

	validates_presence_of :email, message: ""
	validates_length_of :email, in: 5..30, message: "between 3 and 30 characters"
	validates_uniqueness_of :email
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	validates_presence_of :mobile, message: ""
	validates_length_of :mobile, in: 9..15, message: "between 9 and 15 characters"

	validates_length_of :telephone, in: 9..15, message: "between 9 and 15 characters"

	validates_length_of :fax, in: 9..15, message: "between 9 and 15 characters"

	validates_presence_of :country, message: ""
	validates_length_of :country, in: 2..20, message: "between 3 and 30 characters"

	validates_presence_of :town, message: ""
	validates_length_of :town, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :quarter, message: ""
	validates_length_of :quarter, in: 3..30, message: "between 3 and 30 characters"

	validates_presence_of :description

	validates_presence_of :image_profile


	def self.authenticate(email)
    user = User.find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      return user
    else
      return nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end  
  end 

  def to_s
  	return "#{self.first_name} #{self.last_name}"
  end
end
