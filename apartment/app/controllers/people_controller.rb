class PeopleController < ApplicationController
	def index
      @tower = Tower.find(params[:tower_id])
      @home = @tower.homes.find(params[:home_id])
      @person=@home.people
  end
	 def create
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.find(params[:home_id])
    @person = @home.people.create(person_params)
    redirect_to tower_home_people_path
  end

  def edit
  @tower = Tower.find(params[:tower_id])
  @home = @tower.homes.find(params[:home_id])
  @person = @home.people
    
  end

  def update
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.find(params[:home_id])
    @person = @home.people.create(person_params)
    @person.update(person_params)
   redirect_to tower_home_people_path
  end


 def destroy
    @tower = Tower.find(params[:tower_id])
    @home = @tower.homes.find(params[:home_id])
    @person = @home.people.create(person_params)
    @person.destroy
    redirect_to tower_home_people_path
  end

    def person_params
      params.require(:person).permit(:name, :ident)
    end
end
