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

ActiveRecord::Schema.define(:version => 20101128025809) do

  create_table "banks", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "debitos", :force => true do |t|
    t.integer  "paciente_id"
    t.string   "descricao"
    t.decimal  "valor",         :precision => 8, :scale => 2
    t.date     "data"
    t.integer  "tratamento_id"
    t.integer  "orcamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form_of_receipts", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  create_table "hecks", :force => true do |t|
    t.integer  "receipt_id"
    t.decimal  "value",             :precision => 8, :scale => 0
    t.integer  "bank_id"
    t.string   "number"
    t.date     "date_for_deposit"
    t.date     "return_date"
    t.string   "devolution_reason"
    t.date     "ressubmition_date"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_proteticos", :force => true do |t|
    t.integer  "protetico_id"
    t.decimal  "valor",        :precision => 8, :scale => 2
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_tabelas", :force => true do |t|
    t.string   "nome"
    t.integer  "tabela_id"
    t.decimal  "valor",      :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos", :force => true do |t|
    t.integer  "paciente_id"
    t.date     "data"
    t.date     "vencimento_primeira_parcela"
    t.decimal  "valor",                       :precision => 8, :scale => 2
    t.integer  "numero_parcelas"
    t.decimal  "valor_parcela",               :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.integer  "tabela_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proteticos", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receipts", :force => true do |t|
    t.date     "date"
    t.decimal  "value",              :precision => 8, :scale => 2
    t.integer  "patient_id"
    t.integer  "form_of_receipt_id"
    t.integer  "check_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tabelas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trabalho_proteticos", :force => true do |t|
    t.integer  "protetico_id"
    t.integer  "tratamento_id"
    t.integer  "item_protetico_id"
    t.decimal  "valor",                             :precision => 8, :scale => 2
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

  create_table "tratamentos", :force => true do |t|
    t.date     "data"
    t.integer  "paciente_id"
    t.string   "descricao"
    t.string   "dente"
    t.integer  "item_tabela_id"
    t.decimal  "valor",          :precision => 8, :scale => 2
    t.decimal  "custo",          :precision => 8, :scale => 2
    t.string   "face"
    t.integer  "orcamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
