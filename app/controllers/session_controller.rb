class SessionController < ApplicationController
	#login from
	def new
	end

	#where the lpogin form POSTs data
	def create
		user = User.where(:name => params[:username]).first
		if user.present? && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path
		else
			@error = "Login Incorrect"
			render :new
		end
	end

	#logout
	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

end