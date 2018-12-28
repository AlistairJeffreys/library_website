class AddAuthorToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :author, foreign_key: true
  end
  add_index :books, [:author, :created_at]
end
