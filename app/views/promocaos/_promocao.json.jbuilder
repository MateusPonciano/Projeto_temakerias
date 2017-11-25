json.extract! promocao, :id, :codigo, :descricao, :desconto, :created_at, :updated_at
json.url promocao_url(promocao, format: :json)
