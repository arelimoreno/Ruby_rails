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

ActiveRecord::Schema.define(version: 20160314041114) do

  create_table "children", force: :cascade do |t|
    t.string   "nombre"
    t.string   "seg_nombre"
    t.string   "apellido"
    t.string   "seg_apellido"
    t.string   "registro"
    t.integer  "edad"
    t.datetime "fecha_nacimiento"
    t.string   "madre"
    t.string   "padre"
    t.string   "vacunas"
    t.string   "cancer"
    t.string   "deabetes"
    t.string   "hiper"
    t.string   "enfermedad"
    t.string   "grupo_s"
    t.string   "desnutricion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "Sexo"
  end

  create_table "women", force: :cascade do |t|
    t.string   "nombre"
    t.string   "seg_nombre"
    t.string   "apellido"
    t.string   "seg_apellido"
    t.datetime "fecha_nacimiento"
    t.string   "identidicacion"
    t.string   "estado_civil"
    t.integer  "hijo"
    t.integer  "aborto"
    t.string   "problema"
    t.string   "cancer_o"
    t.string   "cancer_m"
    t.string   "cancer"
    t.string   "hiper"
    t.string   "deabetes"
    t.string   "alzheimer"
    t.string   "grupo_s"
    t.string   "enfermedad"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
