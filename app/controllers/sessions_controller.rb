class SessionsController < ApplicationController

	def new
	end

	# Login
	def create
		# user = go to the params hash and within the login hash, grab the email
		user = User.where(email: params[:login][:email]).first

		# go into the login hash and grab password
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to user_path(user)
		else
			redirect_to signup_path
		end
	end

	# Logout
	def destroy
		session.delete(:user_id)
		
		redirect_to root_path
	end

end
