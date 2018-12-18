class AddIndexInBooksBookCopies < ActiveRecord::Migration[5.2]
  def change
    add_index :book_copies, [:book_id, :created_at]
  end
end
