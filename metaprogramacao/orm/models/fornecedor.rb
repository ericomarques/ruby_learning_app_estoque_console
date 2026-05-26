require_relative '../lib/json_orm'

class Fornecedor
  include JsonOrem 
  arquivo_json("json/fornecedores.json")
end

