json.extract! produto, :id, :codbarras, :nome, :data_validade, :created_at, :updated_at
json.url produto_url(produto, format: :json)
