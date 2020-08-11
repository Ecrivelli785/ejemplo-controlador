class AddOtToOrdenTrabajo < ActiveRecord::Migration[6.0]
  def change
    add_column :orden_trabajos, :ot, :integer
  end
end
