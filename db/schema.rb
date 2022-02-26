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

ActiveRecord::Schema.define(version: 2022_02_26_050113) do

  create_table "digital_objects", force: :cascade do |t|
    t.string "object"
    t.string "description"
    t.string "title"
    t.string "creator"
    t.date "date"
    t.string "dataProvider"
    t.string "sourceLink"
    t.string "format"
    t.string "place"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exhibit_digital_objects", force: :cascade do |t|
    t.integer "exhibit_id", null: false
    t.integer "digital_object_id", null: false
    t.string "note"
    t.integer "object_order"
    t.boolean "display_image?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["digital_object_id"], name: "index_exhibit_digital_objects_on_digital_object_id"
    t.index ["exhibit_id"], name: "index_exhibit_digital_objects_on_exhibit_id"
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_digital_objects", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "digital_object_id", null: false
    t.string "caption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["digital_object_id"], name: "index_user_digital_objects_on_digital_object_id"
    t.index ["user_id"], name: "index_user_digital_objects_on_user_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "exhibit_digital_objects", "digital_objects"
  add_foreign_key "exhibit_digital_objects", "exhibits"
  add_foreign_key "user_digital_objects", "digital_objects"
  add_foreign_key "user_digital_objects", "users"
end
