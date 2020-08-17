class RemoveFechaEntregaFromOrdenTrabajo < ActiveRecord::Migration[6.0]
  def change
    remove_column :orden_trabajos, :fecha_entrega, :Datetime
  end
end
