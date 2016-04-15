class RemoveRutaFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :ruta, :string
  end
end
