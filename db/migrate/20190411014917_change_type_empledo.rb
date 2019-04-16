class ChangeTypeEmpledo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :empleados, :UltExa
  	add_column :empleados, :UltExa, :datetime
  end
end
