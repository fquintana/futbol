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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130224145344) do

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "canchas", :force => true do |t|
    t.string   "nombre"
    t.integer  "numero"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equipos_torneos", :id => false, :force => true do |t|
    t.integer "equipo_id"
    t.integer "torneo_id"
  end

  add_index "equipos_torneos", ["equipo_id", "torneo_id"], :name => "index_equipos_torneos_on_equipo_id_and_torneo_id"
  add_index "equipos_torneos", ["torneo_id", "equipo_id"], :name => "index_equipos_torneos_on_torneo_id_and_equipo_id"

  create_table "jugadors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "apodo"
    t.integer  "numero"
    t.date     "fecha_nacimiento"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "equipo_id"
  end

  create_table "torneos", :force => true do |t|
    t.string   "nombre"
    t.integer  "torneotipo_id"
    t.integer  "cantidad_equipos"
    t.date     "fecha_comienzo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "torneotipos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
