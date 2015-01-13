class PlayersController < ApplicationController

	# No index because we will never display all player profiles

	def new
		@player = Player.new
	end

	def create
		@player = Player.new

		if @player.save
			flash[:success] = "Welcome to Tennis Anyone"
			redirect_to players_path(@player)
		else
			flash[:error] = "Error. Please try again."
			render "new"
		end
	end

	def show
		@player = Player.find(params[:id])
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.new

		if @player.save
			flash[:success] = "Welcome to Tennis Anyone"
			redirect_to players_path(@player)
		else
			flash[:danger] = "Error. Please try again."
			render "new"
		end
	end

	def destroy
	end

	private	

	def player_params
		params.require(:player).permit(:blurb, :level, :type_of_play, :availability,
			:secret_weapon, :goal, :interest_lessons, :interest_league)
	end
end
