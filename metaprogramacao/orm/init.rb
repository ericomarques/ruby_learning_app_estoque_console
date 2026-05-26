require_relative './models/produto'
require_relative './models/fornecedor'
require 'terminal-table'

# p = Produto.new

# puts "======= Metodos e Atributos de Instancia ======="
# puts p.methods - Class.methods

# puts "======= Metodos e Atributos de Classe ======="
# puts Produto.methods - Class.methods


# p.nome = "Abacaxi"
# puts p.inspect

produtos = Produto.todos

table_produtos = Terminal::Table.new do |t|
  t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Estoque', 'Fornecedor ID']

  produtos.each do |produto|
    t << [
      produto.id,
      produto.nome,
      produto.descricao,
      "%.2f" % produto.preco,
      produto.estoque,
      produto.fornecedor_id
    ]
  end
end

puts "======== Tabela de Produtos ========"
puts table_produtos

fornecedores = Fornecedor.todos

table_fornecedor = Terminal::Table.new do |t|
  t.headings = ['ID', 'Nome', 'CNPJ']

  fornecedores.each do |fornecedor|
    t << [
      fornecedor.id,
      fornecedor.nome,
      fornecedor.cnpj
    ]
  end
end

puts "======== Tabela de Fornecedores ========"
puts table_fornecedor