require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "core/cadastro_produto"
require_relative "core/listar_produto"
require_relative "core/retirada_estoque"

produtos = [
  { id: 1, nome: "Arroz", descricao: "Pacote de arroz branco 5kg", preco: 24.90, quantidade: 10 },
  { id: 2, nome: "Feijão", descricao: "Pacote de feijão carioca 1kg", preco: 8.50, quantidade: 15 },
  { id: 3, nome: "Macarrão", descricao: "Pacote de macarrão espaguete 500g", preco: 4.75, quantidade: 20 },
  { id: 4, nome: "Óleo", descricao: "Óleo de soja 900ml", preco: 6.99, quantidade: 8 },
  { id: 5, nome: "Café", descricao: "Café torrado e moído 500g", preco: 16.90, quantidade: 12 }
]

iniciar_menu(produtos)