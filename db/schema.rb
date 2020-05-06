ActiveRecord::Schema.define(version: 2019_11_03_142554) do
  enable_extension "plpgsql"

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
