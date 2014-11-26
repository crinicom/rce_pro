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

ActiveRecord::Schema.define(version: 20141126171719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entradas", force: true do |t|
    t.integer  "proyecto_id"
    t.datetime "fecha_creacion"
    t.integer  "persona_id"
    t.integer  "tipo_entrada_id"
    t.text     "comentario"
    t.integer  "tiempo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipos", force: true do |t|
    t.integer  "responsable_id"
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fechas", force: true do |t|
    t.integer  "proyecto_id"
    t.datetime "fecha"
    t.integer  "hito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hitos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participantes", force: true do |t|
    t.integer  "proyecto_id"
    t.integer  "persona_id"
    t.integer  "rol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.integer  "estado_id"
    t.integer  "equipo_id"
    t.integer  "jefe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", force: true do |t|
    t.string   "nombre"
    t.integer  "horas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relacions", force: true do |t|
    t.integer  "proyectoA_id"
    t.integer  "proyectoB_id"
    t.integer  "tipo_relacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.text     "comment"
    t.string   "reference1"
    t.string   "reference2"
    t.string   "reference3"
    t.string   "user"
    t.string   "mail"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_entradas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_relacions", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
