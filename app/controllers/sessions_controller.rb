class SessionsController < ApplicationController

	def new
	end

	# Login
	def create
		# user = go to the params hash and within the login hash, grab the email
		user = User.find_by(email: params[:login][:email])

		# go into the login hash and grab password
		if user && user.authenticate(params[:login][:password])
			session[:user_id] = user.id.to_s
			redirect_to users_path
		else
			render 'signup'
		end

	end

	# Logout
	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end

end
