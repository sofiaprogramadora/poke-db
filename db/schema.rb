# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171028010021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atrapados", force: :cascade do |t|
    t.bigint "pokemons_id"
    t.bigint "users_id"
    t.integer "poke_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemons_id"], name: "index_atrapados_on_pokemons_id"
    t.index ["users_id"], name: "index_atrapados_on_users_id"
  end

  create_table "catched", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.bigint "user_id"
    t.integer "poke_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_catched_on_pokemon_id"
    t.index ["user_id"], name: "index_catched_on_user_id"
  end

  create_table "catcheds", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.bigint "user_id"
    t.integer "poke_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_catcheds_on_pokemon_id"
    t.index ["user_id"], name: "index_catcheds_on_user_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "imagen"
    t.string "carta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atrapados", "pokemons", column: "pokemons_id"
  add_foreign_key "atrapados", "users", column: "users_id"
  add_foreign_key "catched", "pokemons"
  add_foreign_key "catched", "users"
  add_foreign_key "catcheds", "pokemons"
  add_foreign_key "catcheds", "users"
end
