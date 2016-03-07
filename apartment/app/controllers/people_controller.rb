class PeopleController < ApplicationController
	def index
      @tower = Tower.find(params[:tower_id])
     @person=@tower.home.people.all
  end
	 def create
    @tower = Tower.find(params[:tower_id])
    @person = @tower.home.people.create(person_params)
    redirect_to tower_home_people_path
  end

  def edit
  @tower = Tower.find(params[:tower_id]) 
  @person=@tower.home.people.find(params[:id])
    
  end

  def update
    @tower = Tower.find(params[:tower_id]) 
   @person=@tower.home.people.find(params[:id])
    @person.update(person_params)
   redirect_to tower_home_people_path
  end


 def destroy
    @tower = Tower.find(params[:tower_id])
    @person = @tower.homes.find(params[:id])
    @person.destroy
    redirect_to tower_home_people_path
  end

    def person_params
      params.require(:person).permit(:name, :ident)
    end
end
