class AddIndexToBooks < ActiveRecord::Migration[5.2]
  def change
    add_index :books, [:author_id, :created_at]
  end
end
