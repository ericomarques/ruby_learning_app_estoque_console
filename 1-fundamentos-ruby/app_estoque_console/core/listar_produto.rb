require "terminal-table"

def listar_produtos(produtos)
  limpar_tela
  mensagem("=========== Lista de produtos ===========")

  table = Terminal::Table.new do |t|
    t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Quantidade']
    produtos.each do |row|
      t.add_row [row[:id], row[:nome], row[:descricao], row[:preco], row[:quantidade]]
    end
  end

  puts table

  mensagem("Digite enter para continuar")
  gets
  limpar_tela
end