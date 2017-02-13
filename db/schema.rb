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

ActiveRecord::Schema.define(version: 20170213225051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boleta", force: :cascade do |t|
    t.string   "vendedor"
    t.integer  "valor_total"
    t.string   "tipo_pago"
    t.integer  "cantidad_producto"
    t.string   "lista_productos"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "boletaas", force: :cascade do |t|
    t.string   "vendedor"
    t.integer  "codigo_boleta"
    t.float    "monto"
    t.integer  "cantidad_producto"
    t.string   "tipo_pago"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "carros", force: :cascade do |t|
    t.integer  "cant_prod"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "producto_id"
    t.integer  "boletaa_id"
    t.integer  "documento_id"
  end

  create_table "documentos", force: :cascade do |t|
    t.integer  "tipo_documento"
    t.integer  "cantidad_producto"
    t.integer  "rut_proveedor"
    t.string   "fecha_emision"
    t.float    "valor_neto"
    t.float    "valor_exento"
    t.float    "valor_iva"
    t.integer  "folio"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.float    "monto_factura"
    t.integer  "cantidad_producto"
    t.integer  "rut_proveedor"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "rol"
    t.integer  "rut"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "users_id"
  end

  create_table "productos", force: :cascade do |t|
    t.integer  "stock_actual"
    t.integer  "stock_minimo"
    t.string   "nombre"
    t.float    "precio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pruebas", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "pruebas", ["email"], name: "index_pruebas_on_email", unique: true, using: :btree
  add_index "pruebas", ["reset_password_token"], name: "index_pruebas_on_reset_password_token", unique: true, using: :btree

  create_table "registros", force: :cascade do |t|
    t.datetime "ingreso"
    t.datetime "salida"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "registros", ["user_id"], name: "index_registros_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nombre"
    t.integer  "rut"
    t.integer  "rol"
    t.integer  "telefono"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "carros", "productos", on_delete: :cascade
  add_foreign_key "registros", "users"
end
