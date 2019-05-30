class GradesController < ApplicationController
	def index
		@grades = Grade.all
	end

	def show
		@grade = Grade.find(params[:id])
	end

	def new
		@grade = Grade.new
	end

	def create
		@grade = Grade.new

		@grade.name = params[:grade][:name]
		@grade.course = params[:grade][:course]
		@grade.prelim = params[:grade][:prelim]
		@grade.midterm = params[:grade][:midterm]
		@grade.prefinal = params[:grade][:prefinal]
		@grade.final = params[:grade][:final]

		@grade.save

		redirect_to "/grades/#{@grade.id}"
	end
	
	def destroy
		@grade = Grade.find(params[:id])
		@grade.destroy

		redirect_to "/grades"
	end
end
