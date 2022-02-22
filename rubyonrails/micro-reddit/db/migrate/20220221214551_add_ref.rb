class AddRef < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :author_id, :integer
    add_column :posts, :author_id, :integer, references: :users
  end
end
