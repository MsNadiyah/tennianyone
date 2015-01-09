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
		if @user.user_type == "Player"
			@user = User.new(player_params)
				if @user.save
					redirect_to user_path
				else
					render "new"
				end
		else if @user.user_type == "Instructor"
			@user = User.new(instructor_params)
				if @user.save
					redirect_to user_path
				else
					render "new"
				end
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def player_params
	end

	def instructor_params
	end

end
