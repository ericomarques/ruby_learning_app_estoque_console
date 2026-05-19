require "terminal-table"

def listar_produtos()
  limpar_tela
  mensagem("=========== Lista de produtos ===========")

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
    ProdutoServico.todos.each do |produto|
      t.add_row [produto.id, produto.nome, produto.descricao, produto.preco, produto.quantidade]
    end
  end

  puts table

  mensagem("Digite enter para continuar")
  gets
  limpar_tela
end