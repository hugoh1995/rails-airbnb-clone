class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :birthdate
      t.text :description
      t.references :breed, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
