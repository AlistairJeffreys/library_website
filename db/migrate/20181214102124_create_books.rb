class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table  :books do |t|
      t.integer   :isbn, null: false
      t.string    :title, null: false
      t.string    :author
      t.string    :description
      t.string    :genre
      t.datetime  :publication_date
      t.string    :publisher
      
      t.timestamps
    end
  end
end
