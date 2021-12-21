# frozen_string_literal: true

class CreateShoppingLists < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_lists do |t|
      t.string :itens
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
