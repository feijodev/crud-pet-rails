class CreateMedicals < ActiveRecord::Migration[5.0]
  def change
    create_table :medicals do |t|
      t.references :pet, foreign_key: true
      t.text :symptom
      t.text :treatment

      t.timestamps
    end
  end
end
