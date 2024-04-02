class CreateMissingAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :missing_animals do |t|
      t.string :name
      t.string :species
      t.text :description
      t.string :breed
      t.date :date_missing
      t.string :location
      t.string :animal_color
      t.string :animal_size
      t.integer :animal_age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
