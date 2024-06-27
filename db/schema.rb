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

ActiveRecord::Schema[7.1].define(version: 2024_06_27_135014) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "botanical_names", force: :cascade do |t|
    t.string "scientific_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "common_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "electoral_wards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_classes", force: :cascade do |t|
    t.string "classification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.integer "location_id", null: false
    t.integer "neighbourhood_id", null: false
    t.integer "district_id", null: false
    t.string "cca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_parks_on_district_id"
    t.index ["location_id"], name: "index_parks_on_location_id"
    t.index ["neighbourhood_id"], name: "index_parks_on_neighbourhood_id"
  end

  create_table "tree_healths", force: :cascade do |t|
    t.string "status"
    t.date "last_inspected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tree_identifiers", force: :cascade do |t|
    t.integer "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tree_inventories", force: :cascade do |t|
    t.integer "tree_specy_id", null: false
    t.integer "tree_health_id", null: false
    t.integer "tree_location_id", null: false
    t.integer "park_id", null: false
    t.string "common_name"
    t.string "scientific_name"
    t.string "diameter"
    t.string "condition"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["park_id"], name: "index_tree_inventories_on_park_id"
    t.index ["tree_health_id"], name: "index_tree_inventories_on_tree_health_id"
    t.index ["tree_location_id"], name: "index_tree_inventories_on_tree_location_id"
    t.index ["tree_specy_id"], name: "index_tree_inventories_on_tree_specy_id"
  end

  create_table "tree_locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tree_species", force: :cascade do |t|
    t.string "name"
    t.string "scientific_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urban_trees", force: :cascade do |t|
    t.integer "common_name_id"
    t.integer "electoral_ward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "common_name"
    t.string "electoral_ward"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "parks", "districts"
  add_foreign_key "parks", "locations"
  add_foreign_key "parks", "neighbourhoods"
  add_foreign_key "tree_inventories", "parks"
  add_foreign_key "tree_inventories", "tree_healths"
  add_foreign_key "tree_inventories", "tree_locations"
  add_foreign_key "tree_inventories", "tree_species"
end
