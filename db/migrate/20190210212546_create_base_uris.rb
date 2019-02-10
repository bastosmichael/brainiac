class CreateBaseUris < ActiveRecord::Migration[5.2]
  def change
    create_table :base_uris do |t|
      t.string :id
      t.string :url
      t.string :crawler
      t.integer :status
      t.string :message

      t.timestamps
    end
  end
end
