json.extract! cardapio, :id, :nome, :preco, :categoria, :created_at, :updated_at
json.url cardapio_url(cardapio, format: :json)
