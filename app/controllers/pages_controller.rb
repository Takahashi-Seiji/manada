class PagesController < ApplicationController
  def home
    @animals = Animal.all
    @missing_animals = MissingAnimal.all
  end
end
