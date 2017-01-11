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

ActiveRecord::Schema.define(version: 20170111031837) do

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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "producto_id"
    t.integer  "factura_id"
    t.integer  "boletum_id"
  end

  create_table "documentos", force: :cascade do |t|
    t.integer  "tipo_documento"
    t.integer  "cantidad_producto"
    t.string   "rut_proveedor"
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
    t.float    "hrs_trabajadas"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer  "stock_actual"
    t.integer  "stock_minimo"
    t.string   "nombre"
    t.float    "precio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "carros", "boleta", on_delete: :cascade
  add_foreign_key "carros", "facturas", on_delete: :cascade
  add_foreign_key "carros", "productos", on_delete: :cascade
end
