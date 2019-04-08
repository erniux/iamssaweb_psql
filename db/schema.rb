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

ActiveRecord::Schema.define(version: 20190408013026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cliente_contactos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "appaterno"
    t.string   "apmaterno"
    t.string   "telefono_directo"
    t.string   "correo"
    t.string   "puesto"
    t.string   "departamento"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "cliente_id"
    t.index ["cliente_id"], name: "index_cliente_contactos_on_cliente_id", using: :btree
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre_fiscal"
    t.string   "nombre_comercial"
    t.string   "rfc"
    t.string   "calle_numero"
    t.string   "colonia"
    t.string   "poblacion"
    t.string   "estado"
    t.integer  "codigo_postal"
    t.string   "telefono_oficina"
    t.string   "telefono_celular"
    t.string   "telefono_directro"
    t.string   "correo"
    t.string   "medio_contacto"
    t.float    "precio"
    t.float    "presupuesto"
    t.float    "credito"
    t.boolean  "revision_lunes"
    t.boolean  "revision_martes"
    t.boolean  "revision_miercoles"
    t.boolean  "revision_jueves"
    t.boolean  "revision_viernes"
    t.boolean  "revision_sabado"
    t.boolean  "cobro_lunes"
    t.boolean  "cobro_martes"
    t.boolean  "cobro_miercoles"
    t.boolean  "cobro_jueves"
    t.boolean  "cobro_viernes"
    t.boolean  "cobro_sabado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

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

  create_table "solicitud_estructuras", force: :cascade do |t|
    t.integer  "solicitud_id"
    t.boolean  "estructura"
    t.boolean  "columna_pr"
    t.boolean  "columna_hss_o_cajon"
    t.boolean  "columna_ptr_o_monten"
    t.boolean  "trabes_pr"
    t.boolean  "trabes_ps"
    t.boolean  "trabes_angulo_con_ptr"
    t.boolean  "angulo_con_angulo"
    t.boolean  "ptr_con_ptr"
    t.boolean  "union_filete"
    t.boolean  "union_a_tope"
    t.float    "espesor_columna"
    t.float    "espesor_trabe"
    t.float    "tiempo_fabricacion_montaje"
    t.float    "toneladas"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["solicitud_id"], name: "index_solicitud_estructuras_on_solicitud_id", using: :btree
  end

  create_table "solicitud_servicios", force: :cascade do |t|
    t.integer  "solicitud_id"
    t.boolean  "torque"
    t.boolean  "vacio"
    t.boolean  "iris"
    t.boolean  "prueba_doblez"
    t.boolean  "prueba_pintura"
    t.boolean  "doblez"
    t.boolean  "radiografia"
    t.boolean  "inspeccion_visual"
    t.boolean  "ultrasonido"
    t.boolean  "liquido_penetrante"
    t.boolean  "part_magneticas"
    t.boolean  "supervicion"
    t.boolean  "calif_soldador"
    t.boolean  "calif_procedimiento"
    t.boolean  "elab_procedimiento"
    t.boolean  "emision_procedimiento"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["solicitud_id"], name: "index_solicitud_servicios_on_solicitud_id", using: :btree
  end

  create_table "solicitud_tanques", force: :cascade do |t|
    t.integer  "solicitud_id"
    t.boolean  "tanque"
    t.boolean  "recipiente_a_presion"
    t.float    "espesor_cuerpo"
    t.float    "espesor_tapa"
    t.float    "espesor_diametro"
    t.float    "espesor_capacidad"
    t.float    "espesor_longitud_altura"
    t.float    "no_sold_circunferencia"
    t.float    "no_sold_longitud"
    t.float    "codigo_evaluacion"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["solicitud_id"], name: "index_solicitud_tanques_on_solicitud_id", using: :btree
  end

  create_table "solicitud_tuberia", force: :cascade do |t|
    t.integer  "solicitud_id"
    t.float    "recipiente_a_presion"
    t.float    "espesor_cuerpo"
    t.float    "tanque"
    t.float    "espesor_tapa"
    t.float    "espesor_diametro"
    t.float    "espesor_capacidad"
    t.float    "espesor_longitud_altura"
    t.float    "no_sold_circunferencia"
    t.float    "no_sold_longitud"
    t.string   "codigo_evaluacion"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["solicitud_id"], name: "index_solicitud_tuberia_on_solicitud_id", using: :btree
  end

  create_table "solicituds", force: :cascade do |t|
    t.string   "proyecto"
    t.string   "estatus"
    t.text     "comentarios"
    t.integer  "user_id"
    t.integer  "cliente_id"
    t.integer  "cliente_contacto_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["cliente_contacto_id"], name: "index_solicituds_on_cliente_contacto_id", using: :btree
    t.index ["cliente_id"], name: "index_solicituds_on_cliente_id", using: :btree
    t.index ["user_id"], name: "index_solicituds_on_user_id", using: :btree
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

  add_foreign_key "cliente_contactos", "clientes"
  add_foreign_key "solicitud_estructuras", "solicituds"
  add_foreign_key "solicitud_servicios", "solicituds"
  add_foreign_key "solicitud_tanques", "solicituds"
  add_foreign_key "solicitud_tuberia", "solicituds"
  add_foreign_key "solicituds", "cliente_contactos"
  add_foreign_key "solicituds", "clientes"
  add_foreign_key "solicituds", "users"
end
