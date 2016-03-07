class HomesController < ApplicationController
  def index
      @tower = Tower.find(params[:tower_id])
     @home=@tower.homes.all
  end
	 def create
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.create(home_params)
    redirect_to tower_homes_path
  end

  def edit
  @tower = Tower.find(params[:tower_id]) 
  @home=@tower.homes.find(params[:id])
    
  end

  def update
    @tower = Tower.find(params[:tower_id]) 
   @home=@tower.homes.find(params[:id])
    @home.update(home_params)
   redirect_to tower_homes_path
  end


 def destroy
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.find(params[:id])
    @home.destroy
    redirect_to tower_homes_path
  end

    def home_params
      params.require(:home).permit(:number, :flat, :owner, :identification, :tower_id)
    end
end
