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

ActiveRecord::Schema.define(:version => 20101115182202) do

  create_table "debits", :force => true do |t|
    t.integer  "patient_id"
    t.string   "description"
    t.decimal  "price",         :precision => 8, :scale => 2
    t.date     "data"
    t.integer  "treatment_id"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_prosthetics", :force => true do |t|
    t.integer  "prosthetic_id"
    t.decimal  "price",        :precision => 8, :scale => 2
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "table_items", :force => true do |t|
    t.string   "name"
    t.integer  "tabela_id"
    t.decimal  "price",      :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgets", :force => true do |t|
    t.integer  "patient_id"
    t.date     "data"
    t.date     "vencimento_primeira_parcela"
    t.decimal  "price",                       :precision => 8, :scale => 2
    t.integer  "number_of_parcels"
    t.decimal  "price_parcela",               :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.integer  "tabela_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prosthetics", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tabelas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trabalho_prosthetics", :force => true do |t|
    t.integer  "prosthetic_id"
    t.integer  "treatment_id"
    t.integer  "item_prosthetic_id"
    t.decimal  "price",                             :precision => 8, :scale => 2
    t.date     "data"
    t.date     "entrega_prevista"
    t.date     "data_devolucao"
    t.date     "data_repeticao"
    t.date     "data_prevista_devolucao_repeticao"
    t.date     "data_devolucao_repeticao"
    t.string   "cor"
    t.string   "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treatments", :force => true do |t|
    t.date     "data"
    t.integer  "patient_id"
    t.string   "description"
    t.string   "dente"
    t.integer  "table_item_id"
    t.decimal  "price",          :precision => 8, :scale => 2
    t.decimal  "custo",          :precision => 8, :scale => 2
    t.string   "face"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
