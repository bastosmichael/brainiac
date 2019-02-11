# frozen_string_literal: true

class CreateBasePages < ActiveRecord::Migration[5.2]
  def change
    create_table :base_pages, id: false do |t|
      t.string :id, null: false
      t.string :parser
      t.text :body

      t.timestamps
    end

    add_index :base_pages, :id
  end
end
