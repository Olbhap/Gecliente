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

ActiveRecord::Schema.define(version: 20141013121231) do

  create_table "clientes", force: true do |t|
    t.string   "nif"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "nombre_comercial"
    t.string   "telefono"
    t.string   "telf_movil"
    t.string   "fax"
    t.string   "email"
    t.string   "web"
    t.text     "descripcion"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usuario_id"
  end

  add_index "clientes", ["usuario_id"], name: "index_clientes_on_usuario_id"

  create_table "facturas", force: true do |t|
    t.date     "fecha_alta"
    t.string   "serie_factura"
    t.integer  "numero_factura"
    t.text     "comentario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usuario_id"
  end

  add_index "facturas", ["usuario_id"], name: "index_facturas_on_usuario_id"

  create_table "usuarios", force: true do |t|
    t.string   "nif",                                                 null: false
    t.string   "nombre",                                              null: false
    t.string   "apellidos"
    t.string   "nombre_comercial"
    t.string   "telefono",                    limit: 40
    t.string   "fax",                         limit: 40
    t.string   "telf_movil",                  limit: 40
    t.string   "web"
    t.string   "email",                                  default: "", null: false
    t.string   "encrypted_password",                     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "current_sign_in_mac_address"
    t.string   "last_sign_in_mac_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["nif"], name: "index_usuarios_on_nif", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
