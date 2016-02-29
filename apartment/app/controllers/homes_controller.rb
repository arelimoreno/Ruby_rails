class HomesController < ApplicationController
	 def create
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.create(home_params)
    redirect_to tower_path(@tower)
  end

  def edit 
    @home=Home.find(params[:id])
    
  end

  def update
    @home=Home.find(params[:id])
    @Home.update(home_params)
   redirect_to tower_path(@tower)
  end


 def destroy
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.find(params[:id])
    @home.destroy
    redirect_to tower_path(@tower)
  end

    def home_params
      params.require(:home).permit(:number, :flat, :owner, :identification)
    end
end
