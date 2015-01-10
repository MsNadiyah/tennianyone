class UsersController < ApplicationController
	# before_action :logged_in_user, only [:edit, :update, :destroy]

	def logged_in_user
		unless logged_in?
			redirect_to 'login'
		end
	end

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

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update_attributes(user_params)
			flash[:success] = "Your profile has been updated!"
			redirect_to users_path(@user)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		# Consider adding pop up mesage to confirm profile deletion
		redirect_to users_path
	end

	#######

	private

	def user_params
		params.require(:user).permit(:name, :user_type, :email, :zip, :gender, :image, :password, :password_confirmation)
	end

	def logged_in_user
		unless logged_in?
			flash[:danger] = "Please log in."
			redirect_to login_path
		end
	end

end
