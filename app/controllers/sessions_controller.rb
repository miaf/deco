class SessionsController < ApplicationController
	def new
		
	end
	def create
		user = User.authenticate(params[:login_name], params[:password])
		if user
			session[:user_id] = "#{user.id}{user.login_name}"
			redirect_to admin_user_path(user), notice: 'Logged in!'
		else
			flash.now.alert = "Invalid username or password"
			render 'new'
		end
	end
	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "logged out!"
	end
end
