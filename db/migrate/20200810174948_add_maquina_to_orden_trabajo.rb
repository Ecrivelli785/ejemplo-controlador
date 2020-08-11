class AddMaquinaToOrdenTrabajo < ActiveRecord::Migration[6.0]
  def change
    add_column :orden_trabajos, :maquina, :string
  end
end
