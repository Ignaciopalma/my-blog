class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :condiciones
      t.integer :agua
      t.integer :seguridad
      t.integer :camping
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
