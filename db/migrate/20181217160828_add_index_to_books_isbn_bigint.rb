class AddIndexToBooksIsbnBigint < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :isbn, :bigint
  end
end
