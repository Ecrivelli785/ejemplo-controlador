class AddCantidadToOrdenTrabajos < ActiveRecord::Migration[6.0]
  def change
    add_column :orden_trabajos, :cantidad, :integer
  end
end
