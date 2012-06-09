class FixeTypeIdName < ActiveRecord::Migration
  def up
    rename_column :plants, :type_id, :plant_type_id
  end

  def down
  end
end