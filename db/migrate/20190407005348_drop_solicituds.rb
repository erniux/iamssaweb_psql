class DropSolicituds < ActiveRecord::Migration[5.0]
  def change
  	drop_table :solicituds
  end
end
