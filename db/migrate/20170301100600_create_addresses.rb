class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :street
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
