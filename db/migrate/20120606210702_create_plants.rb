class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
