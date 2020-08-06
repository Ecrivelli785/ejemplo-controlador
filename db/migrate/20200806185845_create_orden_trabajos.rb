class CreateOrdenTrabajos < ActiveRecord::Migration[6.0]
  def change
    create_table :orden_trabajos do |t|
      t.string :cliente
      t.string :producto
      t.string :post

      t.timestamps
    end
  end
end
