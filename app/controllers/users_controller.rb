class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			# If the save is successful, automatically log the user in
			session[:user_id] = @user.id.to_s
			redirect_to users_path(@user)
		else
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :user_type, :email, :zip, :gender, :password, :password_confirmation)
	end

end
