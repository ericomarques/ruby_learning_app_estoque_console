






class ProdutoServico # unit of work
  @arquivo = "db/produtos.json"

  def self.todos
    dados = JsonRepositorio.ler(@arquivo)
    produtos = []
    dados.each do |dado|
      produtos << Produto.new(dado)
    end
  end

  def self.adicionar(produto)
    produto_hash = self.transformar_para_hash
    JsonRepositorio.adicionar(@arquivo, produto_hash)
  end

  private
  def transformar_para_hash(produto)
    produto.instance_variables.each_with_object({}) do |var, hash|
      hash[var.to_s.delete("@")] = produto.instance_variable_get(var)
    end
  end

end