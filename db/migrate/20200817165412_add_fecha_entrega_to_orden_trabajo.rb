class AddFechaEntregaToOrdenTrabajo < ActiveRecord::Migration[6.0]
  def change
    add_column :orden_trabajos, :fecha_entrega, :date
  end
end
