class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to admin_user_path(@user), notice: "Thank you. Your request has been submitted"
		else
			flash[:alert] = "The action was not performed. Please try again."
			render 'new'
		end
	end

	private
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :date_of_birth, :place_of_birth,
									:nationality, :id_ref_numb, :id_ref_type, :id_ref_made_at,
									:id_ref_expired_at, :country, :town, :quarter, :street,
									:mobile, :password, :password_confirmation, :image_profile,
									:fax, :description, :telephone, :login_name)
	end
end
