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

ActiveRecord::Schema.define(version: 20190407005348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "color"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "cancelada"
    t.datetime "Cancelacion"
    t.integer  "IdEntidad"
    t.integer  "NoCotizacion"
    t.datetime "FechaSalida"
    t.datetime "FechaRegreso"
    t.integer  "IdPersonalAutoriza"
    t.integer  "IdPersonal"
    t.string   "Ubicacion"
    t.string   "EntregarResultados"
    t.integer  "IdContactoSolicita"
    t.integer  "IdContactoAtiende"
    t.boolean  "SegLentes"
    t.boolean  "SegCasco"
    t.boolean  "SegZapatos"
    t.boolean  "SegArnes"
    t.boolean  "SegTaponesAuditivos"
    t.boolean  "SegIMSS"
    t.string   "Obra"
    t.integer  "IdEntidadDpto"
    t.integer  "IdCiudad"
    t.string   "Unidad"
    t.integer  "NoOTOrigen"
    t.integer  "IdObra"
    t.boolean  "EntregarBorrador"
    t.boolean  "EntregarPeliculas"
    t.text     "observaciones"
    t.datetime "start"
    t.datetime "end"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "roles"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
