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

ActiveRecord::Schema.define(version: 20160104165720) do

  create_table "clients", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "entreprise"
    t.string   "rue"
    t.string   "ville"
    t.integer  "tel"
    t.text     "description"
    t.string   "contrat_type"
    t.string   "email"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "date"
    t.string   "domaine"
    t.string   "site_type"
    t.string   "multilingue"
    t.integer  "avance"
    t.string   "techno_type"
    t.text     "description"
    t.integer  "client_id"
    t.datetime "date_avance_2"
    t.text     "note"
    t.datetime "date_avance_3"
    t.datetime "date_avance_4"
  end

  add_index "projects", ["client_id"], name: "index_projects_on_client_id"

end
