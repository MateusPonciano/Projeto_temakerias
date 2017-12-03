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

ActiveRecord::Schema.define(version: 0) do

  create_table "administradors", primary_key: "cpf", id: :string, limit: 11, force: :cascade do |t|
    t.string "cra", limit: 9, null: false
    t.index ["cra"], name: "sys_c00371086", unique: true
  end

  create_table "apresenta", primary_key: ["codcardapio", "codigomesa", "horarioentrada", "codpromocao"], force: :cascade do |t|
    t.integer "codcardapio", limit: 3, precision: 3, null: false
    t.string "codigomesa", limit: 3, null: false
    t.datetime "horarioentrada", precision: 6, null: false
    t.integer "codpromocao", limit: 3, precision: 3, null: false
  end

  create_table "armazenas", primary_key: ["codbarras", "cnpj"], force: :cascade do |t|
    t.string "codbarras", limit: 13, null: false
    t.string "cnpj", limit: 14, null: false
    t.integer "quantidade", precision: 38, null: false
  end

  create_table "atendes", primary_key: ["cpf_garcom", "codigomesa", "horarioentrada"], force: :cascade do |t|
    t.string "codigomesa", limit: 3, null: false
    t.datetime "horarioentrada", precision: 6, null: false
    t.string "cpf_garcom", limit: 11, null: false
  end

  create_table "cardapios", primary_key: "codigo", force: :cascade do |t|
    t.string "nome", limit: 30, null: false
    t.decimal "preco", precision: 8, scale: 2, null: false
    t.string "categoria", limit: 30, null: false
  end

  create_table "compoes", primary_key: ["codbarras", "codcardapio"], force: :cascade do |t|
    t.string "codbarras", limit: 13, null: false
    t.integer "codcardapio", limit: 3, precision: 3, null: false
  end

  create_table "dependentes", primary_key: ["cpf_func", "nome"], force: :cascade do |t|
    t.string "cpf_func", limit: 11, null: false
    t.string "nome", limit: 30, null: false
    t.string "relacao", limit: 30, null: false
    t.date "datanasc"
    t.string "sexo", limit: 1, null: false
  end

  create_table "fornecedors", primary_key: "cnpj", id: :string, limit: 14, force: :cascade do |t|
    t.string "nome", limit: 30, null: false
  end

  create_table "funcionarios", primary_key: "cpf", id: :string, limit: 11, force: :cascade do |t|
    t.string "cnpj_t", limit: 14
    t.string "nome", limit: 30, null: false
    t.date "datanasc", null: false
    t.date "dataadmissao", null: false
    t.decimal "salario", precision: 10, scale: 2, null: false
  end

  create_table "garcomdiastrabalhos", primary_key: ["cpf", "diastrabalho"], force: :cascade do |t|
    t.string "cpf", limit: 11, null: false
    t.string "diastrabalho", limit: 15, null: false
  end

  create_table "garcoms", primary_key: "cpf", id: :string, limit: 11, force: :cascade do |t|
  end

  create_table "mesacompracardapios", primary_key: ["codcardapio", "codigomesa", "horarioentrada"], force: :cascade do |t|
    t.integer "codcardapio", limit: 3, precision: 3, null: false
    t.string "codigomesa", limit: 3, null: false
    t.datetime "horarioentrada", precision: 6, null: false
    t.integer "qtd", precision: 38
  end

  create_table "mesas", primary_key: ["codigo", "horarioentrada"], force: :cascade do |t|
    t.string "codigo", limit: 3, null: false
    t.datetime "horarioentrada", precision: 6, null: false
    t.datetime "horariosaida", precision: 6, null: false
    t.decimal "conta", precision: 10, scale: 2, null: false
  end

  create_table "produtos", primary_key: "codbarras", id: :string, limit: 13, force: :cascade do |t|
    t.string "nome", limit: 30, null: false
    t.date "data_validade", null: false
  end

  create_table "promocaos", primary_key: "codigo", force: :cascade do |t|
    t.string "descricao", limit: 100, null: false
    t.decimal "desconto", precision: 5, scale: 4, null: false
  end

  create_table "telfornecedors", primary_key: ["cnpj", "telefone"], force: :cascade do |t|
    t.string "cnpj", limit: 14, null: false
    t.string "telefone", limit: 10, null: false
  end

  create_table "telfuncionarios", primary_key: ["cpf", "telefone"], force: :cascade do |t|
    t.string "cpf", limit: 11, null: false
    t.string "telefone", limit: 9, null: false
  end

  create_table "temakeria", primary_key: "cnpj", id: :string, limit: 14, force: :cascade do |t|
    t.string "cpf_adm", limit: 11
    t.string "nome", limit: 30, null: false
    t.decimal "faturamento", precision: 10, scale: 2, null: false
    t.decimal "despesas", precision: 10, scale: 2, null: false
    t.string "numero", limit: 4, null: false
    t.string "cep", limit: 8, null: false
    t.string "cnpj_matriz", limit: 14
    t.index ["cpf_adm"], name: "sys_c00371094", unique: true
  end

  create_table "temakeriacompraprodutos", primary_key: ["cnpj_temakeria", "cnpj_fornecedor", "codbarras"], force: :cascade do |t|
    t.string "cnpj_temakeria", limit: 14, null: false
    t.string "cnpj_fornecedor", limit: 14, null: false
    t.string "codbarras", limit: 13, null: false
    t.date "data"
    t.decimal "preco", precision: 8, scale: 2, null: false
    t.integer "qtd", precision: 38, null: false
  end

  add_foreign_key "administradors", "funcionarios", column: "cpf", primary_key: "cpf", name: "administradors_fk"
  add_foreign_key "apresenta", "cardapios", column: "codcardapio", primary_key: "codigo", name: "apresenta_fk1"
  add_foreign_key "apresenta", "mesas", column: "codigomesa", primary_key: "codigo", name: "apresenta_fk2"
  add_foreign_key "apresenta", "mesas", column: "horarioentrada", primary_key: "horarioentrada", name: "apresenta_fk2"
  add_foreign_key "apresenta", "promocaos", column: "codpromocao", primary_key: "codigo", name: "apresenta_fk4"
  add_foreign_key "armazenas", "produtos", column: "codbarras", primary_key: "codbarras", name: "armazenas_fk1"
  add_foreign_key "armazenas", "temakeria", column: "cnpj", primary_key: "cnpj", name: "armazenas_fk2"
  add_foreign_key "atendes", "garcoms", column: "cpf_garcom", primary_key: "cpf", name: "atendes_fk3"
  add_foreign_key "atendes", "mesas", column: "codigomesa", primary_key: "codigo", name: "atendes_fk1"
  add_foreign_key "atendes", "mesas", column: "horarioentrada", primary_key: "horarioentrada", name: "atendes_fk1"
  add_foreign_key "compoes", "cardapios", column: "codcardapio", primary_key: "codigo", name: "compoes_fk2"
  add_foreign_key "compoes", "produtos", column: "codbarras", primary_key: "codbarras", name: "compoes_fk1"
  add_foreign_key "dependentes", "funcionarios", column: "cpf_func", primary_key: "cpf", name: "dependentes_fk"
  add_foreign_key "funcionarios", "temakeria", column: "cnpj_t", primary_key: "cnpj", name: "funcionarios_fk1"
  add_foreign_key "garcomdiastrabalhos", "garcoms", column: "cpf", primary_key: "cpf", name: "garcomdiastrabalhos_fk"
  add_foreign_key "garcoms", "funcionarios", column: "cpf", primary_key: "cpf", name: "garcoms_fk"
  add_foreign_key "mesacompracardapios", "cardapios", column: "codcardapio", primary_key: "codigo", name: "mesascompracardapio_fk1"
  add_foreign_key "mesacompracardapios", "mesas", column: "codigomesa", primary_key: "codigo", name: "mesascompracardapio_fk2"
  add_foreign_key "mesacompracardapios", "mesas", column: "horarioentrada", primary_key: "horarioentrada", name: "mesascompracardapio_fk2"
  add_foreign_key "telfornecedors", "fornecedors", column: "cnpj", primary_key: "cnpj", name: "telfornecedors_fk"
  add_foreign_key "telfuncionarios", "funcionarios", column: "cpf", primary_key: "cpf", name: "telfuncionarios_fk"
  add_foreign_key "temakeria", "administradors", column: "cpf_adm", primary_key: "cpf", name: "temakeria_fk1"
  add_foreign_key "temakeria", "temakeria", column: "cnpj_matriz", primary_key: "cnpj", name: "temakeria_fk2"
  add_foreign_key "temakeriacompraprodutos", "fornecedors", column: "cnpj_fornecedor", primary_key: "cnpj", name: "temakeriacompraprodutos_fk2"
  add_foreign_key "temakeriacompraprodutos", "produtos", column: "codbarras", primary_key: "codbarras", name: "temakeriacompraprodutos_fk3"
  add_foreign_key "temakeriacompraprodutos", "temakeria", column: "cnpj_temakeria", primary_key: "cnpj", name: "temakeriacompraprodutos_fk1"
end
