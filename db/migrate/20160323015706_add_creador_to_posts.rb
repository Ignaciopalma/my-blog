class AddCreadorToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :creador, :string
  end
end
