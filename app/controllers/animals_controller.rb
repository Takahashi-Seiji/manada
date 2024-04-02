class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user

    if @animal.save
      redirect_to root_path
    end
  end


  private

  def animal_params
    params.require(:animal).permit(:name, :species, :found_on, :found_location, :size, :color, :description, :age, :photo)
  end
end
