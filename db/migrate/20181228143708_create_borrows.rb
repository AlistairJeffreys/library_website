class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.integer :user_id
      t.integer :book_copy_id

      t.timestamps
    end
    add_index :borrows, :user_id
    add_index :borrows, :book_copy_id
    add_index :borrows, [:user_id, :book_copy_id], unique: true
  end
end
