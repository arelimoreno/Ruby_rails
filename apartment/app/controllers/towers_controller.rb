class TowersController < ApplicationController
	def index

		 @tower=Tower.all

	end

	def new

		@tower = Tower.new
	end

	def create
		@tower=Tower.new(tower_params)
		@tower.save
		redirect_to towers_path

	end 

	def edit 
		@tower=Tower.find(params[:id])
		
	end

	def update
		@tower=Tower.find(params[:id])
		@tower.update(tower_params)
		redirect_to towers_path
	end

	def show
		@tower=Tower.find(params[:id])
		
	end

	def destroy
		@tower=Tower.find(params[:id])
		@tower.destroy
		redirect_to towers_path
	end

def tower_params
		params.require(:tower).permit(:name, :porter)
	end

end



 