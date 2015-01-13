class InstructorsController < ApplicationController

	# No index method because we will not display all instructors

	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_params)
		
		if @instructor.save
			flash[:success] = "Welcome to Tennis Anyone!"
			redirect_to instructors_path(@instructor)
		else
			flash[:danger] = "Error. Please try again"
			render "new"
		end
	end

	def show
		@instructor = Instructor.find(params[:id])
	end

	def edit
		@instructor = Instructor.find(params[:id])
	end

	def update
		@instructor = Instructor.new(instructor_params)

		if @instructor.save
			flash[:success] = "Welcome to Tennis Anyone!"
			redirect_to instructors_path(@instructor)
		else
			flash[:danger] = "Error. Please try again"
			render "new"
		end
	end

	def destroy
	end

	def lesson_type_params
		lesson_type_params = params["Private", "Group/Clinic"]
	end


	
	private
	
	def instructor_params
		params.require(:instructor).permit(:highest_level, :blurb, :lesson_type,
				:lesson_ages, :lesson_speciality, :rate_hourly, :rate_clinic, :availability)
	end

end
