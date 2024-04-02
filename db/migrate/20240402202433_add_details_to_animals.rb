class AddDetailsToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :found_location, :string
    add_column :animals, :size, :string
    add_column :animals, :color, :string
    add_column :animals, :description, :text
    add_column :animals, :age, :integer
    add_column :animals, :status, :string
  end
end
