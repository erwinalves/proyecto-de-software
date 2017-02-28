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

ActiveRecord::Schema.define(version: 20170227223322) do

  create_table "carros", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "ticket_id"
    t.integer  "invoices_id"
    t.integer  "cantidad_producto"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "carros", ["invoices_id"], name: "index_carros_on_invoices_id"
  add_index "carros", ["product_id"], name: "index_carros_on_product_id"
  add_index "carros", ["ticket_id"], name: "index_carros_on_ticket_id"

  create_table "invoices", force: :cascade do |t|
    t.integer  "tipo_documento"
    t.integer  "cantidad_producto"
    t.string   "rut_proveedor"
    t.float    "valor_neto"
    t.float    "valor_exento"
    t.float    "valor_iva"
    t.integer  "folio"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.integer  "rol"
    t.integer  "rut"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id"

  create_table "products", force: :cascade do |t|
    t.integer  "codigo_producto"
    t.integer  "stock_actual"
    t.integer  "stock_minimo"
    t.string   "nombre_producto"
    t.float    "precio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "registries", force: :cascade do |t|
    t.integer  "people_id"
    t.datetime "ingreso"
    t.datetime "salida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "registries", ["people_id"], name: "index_registries_on_people_id"

  create_table "tickets", force: :cascade do |t|
    t.string   "vendedor"
    t.integer  "codigo_boleta"
    t.float    "monto"
    t.integer  "cantidad_producto"
    t.string   "tipo_pago"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
