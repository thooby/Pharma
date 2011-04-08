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

ActiveRecord::Schema.define(:version => 20110407163751) do

  create_table "famille_meds", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "produit_id"
    t.string   "nom_comercial"
    t.integer  "tipe_id"
    t.string   "dose"
    t.integer  "quantite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operations", :force => true do |t|
    t.date     "fecha"
    t.integer  "item_id"
    t.integer  "movement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produits", :force => true do |t|
    t.string   "nom"
    t.integer  "famille_med_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipes", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
