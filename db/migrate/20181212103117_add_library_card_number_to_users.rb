class AddLibraryCardNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :library_card_number, :integer
  end
end
