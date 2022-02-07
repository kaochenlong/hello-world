class BookModleAddIsbnColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :ISBN, :string
  end
end