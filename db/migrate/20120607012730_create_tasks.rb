class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :minutes
      t.integer :plant_id
      t.integer :user_id
      t.datetime :task_date
      t.text :notes

      t.timestamps
    end
  end
end
