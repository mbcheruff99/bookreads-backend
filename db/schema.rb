
ActiveRecord::Schema[8.1].define(version: 2025_11_28_033948) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "authors", force: :cascade do |t|
    t.text "bio"
    t.datetime "created_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.string "title"
    t.datetime "updated_at", null: false
  end
end
