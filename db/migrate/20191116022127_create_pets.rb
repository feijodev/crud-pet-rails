class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthday
      t.string :breed
      t.integer :category

      t.timestamps
    end
  end
end
