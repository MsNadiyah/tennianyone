module SessionsHelper
	# View helper

	# Once logged in, sets the session = to the user's id
	def log_in
		session[:user_id] = user.id
	end

	# Sets the current user equal to the session (user id)
	def current_user	

		@current_user ||= User.find_by(session[:user_id])
			# is the same as the code below

			# if @current_user.nil?
			# 	@current_user = User.find_by(session[:user_id])
			# else
			# 	@current_user
			# end
	end

	# Supplying a conditional
	def logged_in?
		session[:user_id] != nil
	end




end
