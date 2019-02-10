class CreateBasePages < ActiveRecord::Migration[5.2]
  def change
    create_table :base_pages do |t|
      t.string :id
      t.string :parser
      t.text :body

      t.timestamps
    end
  end
end
