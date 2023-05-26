ActiveRecord::Schema.define(version: 2023_05_26_021243) do

  enable_extension "plpgsql"

  create_table "facebookclones", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
