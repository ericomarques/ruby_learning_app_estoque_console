require_relative '../lib/json_orm'

class Produto
  include JsonOrem 
  arquivo_json("json/produtos.json")
end

