# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_06_09_151049) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.bigint "exchange_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exchange_id"], name: "index_chats_on_exchange_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.bigint "owner_id", null: false
    t.bigint "jersey_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jersey_id"], name: "index_exchanges_on_jersey_id"
    t.index ["owner_id"], name: "index_exchanges_on_owner_id"
  end

  create_table "jerseys", force: :cascade do |t|
    t.string "name"
    t.string "flocking"
    t.integer "year"
    t.string "description"
    t.string "image"
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.string "size"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_jerseys_on_team_id"
    t.index ["user_id"], name: "index_jerseys_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "chat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nom"
    t.string "email"
    t.string "localisation"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chats", "exchanges"
  add_foreign_key "exchanges", "jerseys"
  add_foreign_key "exchanges", "users", column: "owner_id"
  add_foreign_key "jerseys", "teams"
  add_foreign_key "jerseys", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "users"
end
