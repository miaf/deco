class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path, notice: "Thank you. Your request has been submitted"
		else
			flash[:alert] = "The action was not performed. Please try again."
			render 'new'
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :date_of_birth,
									   :place_of_birth,	:nationality, :id_reference,
									   :id_ref_type, :country, :town, :quarter, :street,
									   :mobile, :password, :password_confirmation, :image,
									   :fax, :description, :telephone)
	end
end
