# encoding: UTF-8
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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 0) do

=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150811132117) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150811144343) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150811114723) do
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "histories", force: :cascade do |t|
    t.float    "quantity",   limit: 24
    t.float    "price",      limit: 24
    t.integer  "order_id",   limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "histories", ["order_id"], name: "index_histories_on_order_id", using: :btree
  add_index "histories", ["product_id"], name: "index_histories_on_product_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "image_src",  limit: 255
    t.integer  "product_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id", using: :btree

  create_table "is_admins", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "status_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "orders", ["status_id"], name: "index_orders_on_status_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "product_name", limit: 255
    t.float    "price",        limit: 24
    t.float    "available",    limit: 24
    t.integer  "category_id",  limit: 4
    t.integer  "unit_id",      limit: 4
<<<<<<< HEAD
=======
=======
ActiveRecord::Schema.define(version: 20150811114922) do
>>>>>>> 10506500cbb3048eaa73946491a282b7f40b9140

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "address",    limit: 65535
>>>>>>> 4d2f2337bd60a51f6c6a9aea8544766e9c606105
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

<<<<<<< HEAD
  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["unit_id"], name: "index_products_on_unit_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
=======
<<<<<<< HEAD
  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "histories", force: :cascade do |t|
    t.float    "quantity",   limit: 24
    t.float    "price",      limit: 24
    t.integer  "order_id",   limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "histories", ["order_id"], name: "index_histories_on_order_id", using: :btree
  add_index "histories", ["product_id"], name: "index_histories_on_product_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "image_src",  limit: 255
    t.integer  "product_id", limit: 4
=======
<<<<<<< HEAD
  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["unit_id"], name: "index_products_on_unit_id", using: :btree

  create_table "units", force: :cascade do |t|
    t.string   "unit_type",  limit: 255
>>>>>>> 10506500cbb3048eaa73946491a282b7f40b9140
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

<<<<<<< HEAD
  create_table "units", force: :cascade do |t|
    t.string   "unit_type",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
=======
<<<<<<< HEAD
  add_index "images", ["product_id"], name: "index_images_on_product_id", using: :btree

=======
  add_foreign_key "images", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "units"
=======
>>>>>>> 10506500cbb3048eaa73946491a282b7f40b9140
  create_table "is_admins", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "status_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "orders", ["status_id"], name: "index_orders_on_status_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "product_name", limit: 255
    t.float    "price",        limit: 24
    t.float    "available",    limit: 24
    t.integer  "category_id",  limit: 4
    t.integer  "unit_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["unit_id"], name: "index_products_on_unit_id", using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "unit_type",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
<<<<<<< HEAD
    t.string   "name",                   limit: 255
    t.string   "phone_number",           limit: 255
=======
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
<<<<<<< HEAD
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
=======
    t.string   "user_name",              limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "phone_number",           limit: 255
    t.boolean  "status",                 limit: 1
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
  create_table "wishlists", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "wishlists", ["product_id"], name: "index_wishlists_on_product_id", using: :btree
  add_index "wishlists", ["user_id"], name: "index_wishlists_on_user_id", using: :btree

  add_foreign_key "histories", "orders"
  add_foreign_key "histories", "products"
  add_foreign_key "images", "products"
  add_foreign_key "orders", "statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "units"
  add_foreign_key "wishlists", "products"
  add_foreign_key "wishlists", "users"
<<<<<<< HEAD
=======
=======
>>>>>>> 4d2f2337bd60a51f6c6a9aea8544766e9c606105
>>>>>>> 10506500cbb3048eaa73946491a282b7f40b9140
>>>>>>> 4ba0c2286929b115504ca5730e1682ded7b67fa8
>>>>>>> 89d520d867b9274609a6af7c4a5132c40887aa5a
end
