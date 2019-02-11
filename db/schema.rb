# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_190_210_212_816) do
  create_table 'base_pages', id: false, force: :cascade do |t|
    t.string 'id', null: false
    t.string 'parser'
    t.text 'body'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['id'], name: 'index_base_pages_on_id'
  end

  create_table 'base_uris', id: false, force: :cascade do |t|
    t.string 'id', null: false
    t.string 'url', null: false
    t.string 'crawler'
    t.integer 'status'
    t.string 'message'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['id'], name: 'index_base_uris_on_id'
    t.index ['url'], name: 'index_base_uris_on_url'
  end
end
