class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :book_copy_id

      t.timestamps
    end
    add_index :reservations, :user_id
    add_index :reservations, :book_copy_id
    add_index :reservations, [:user_id, :book_copy_id], unique: true
  end
end
