class CreateBaseUris < ActiveRecord::Migration[5.2]
  def change
    create_table :base_uris, id: false do |t|
      t.string :id, required: true
      t.string :url, required: true
      t.string :crawler
      t.integer :status
      t.string :message

      t.timestamps
    end

    add_index :base_uris, :id
    add_index :base_uris, :url
  end
end
