class MissingAnimalsController < ApplicationController
  def new
    @missing_animal = MissingAnimal.new
  end

  def create
    @missing_animal = MissingAnimal.new(missing_animal_params)
    @missing_animal.user = current_user

    if @missing_animal.save
      redirect_to root_path
    end
  end

  private

  def missing_animal_params
    params.require(:missing_animal).permit(:name, :species, :description, :breed, :date_missing, :location, :animal_color, :animal_size, :animal_age, :photo)
  end
end
