class AddUpdatedatIndexToPosts < ActiveRecord::Migration[5.2]
  def change
    add_index :posts, :updated_at
  end
end
