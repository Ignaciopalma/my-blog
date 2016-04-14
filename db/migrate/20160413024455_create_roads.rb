class CreateRoads < ActiveRecord::Migration
  def change
    create_table :roads do |t|
      t.string :principio
      t.string :final
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
