class PagesController < ApplicationController
  def home
    @animals = Animal.all
    @missing_animals = MissingAnimal.all
  end

  def dashboard
    @user = current_user
    @missing_animals = @user.missing_animals
    @found_animals = @user.animals
  end
end
