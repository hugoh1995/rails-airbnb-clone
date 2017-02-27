class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :dog, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
