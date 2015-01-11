class PlayersController < ApplicationController

	# No index because we will never display all player profiles

	def new
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end


	private	

	def player_params
		params.require(:player).permit(:blurb, :level, :type_of_play, :availability,)
			:secret_weapon, :goal, :interest_lessons, :interest_league)
	end
end
