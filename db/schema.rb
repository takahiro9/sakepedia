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

ActiveRecord::Schema[7.2].define(version: 2024_10_17_160809) do
  create_schema "_realtime"
  create_schema "auth"
  create_schema "extensions"
  create_schema "graphql"
  create_schema "graphql_public"
  create_schema "net"
  create_schema "pgbouncer"
  create_schema "pgsodium"
  create_schema "pgsodium_masks"
  create_schema "realtime"
  create_schema "storage"
  create_schema "supabase_functions"
  create_schema "vault"

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_graphql"
  enable_extension "pg_net"
  enable_extension "pg_stat_statements"
  enable_extension "pgcrypto"
  enable_extension "pgjwt"
  enable_extension "pgsodium"
  enable_extension "plpgsql"
  enable_extension "supabase_vault"
  enable_extension "uuid-ossp"

  create_table "brands", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "brand_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "brewery_id", null: false
    t.index ["brewery_id"], name: "index_brands_on_brewery_id"
  end

  create_table "breweries", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "brewery_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sakes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "product_name", null: false
    t.float "alcohol", null: false
    t.string "rice"
    t.integer "rice_polish_ratio"
    t.string "yeast"
    t.float "acidity"
    t.integer "sake_meter_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "brand_id", null: false
    t.index ["brand_id"], name: "index_sakes_on_brand_id"
  end

  add_foreign_key "brands", "breweries"
  add_foreign_key "sakes", "brands"
end
