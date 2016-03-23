class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :spot, :string
    add_column :posts, :peligro, :string
    add_column :posts, :año, :integer
  end
end
