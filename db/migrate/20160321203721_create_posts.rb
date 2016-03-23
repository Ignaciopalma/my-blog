class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
    	t.string :ruta
    	t.string :participantes
    	t.string :historia

      t.timestamps null: false
    end
  end
end
