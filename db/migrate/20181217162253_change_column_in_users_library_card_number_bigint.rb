class ChangeColumnInUsersLibraryCardNumberBigint < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :library_card_number, :bigint
  end
end
