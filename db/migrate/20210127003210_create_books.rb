# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :content
      t.date :publish_date

      t.timestamps
    end
  end
end
