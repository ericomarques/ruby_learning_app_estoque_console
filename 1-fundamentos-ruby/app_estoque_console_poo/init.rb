require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "display/servicos/cadastro_produto"
require_relative "display/servicos/listar_produto"
require_relative "display/servicos/retirada_estoque"

require_relative "dominio/entidades/produto"
require_relative "dominio/servicos/produto_servico"
require_relative "infraestrutura/json_repositorio"

ProdutoServico.adicionar(Produto.new({ id: 1, nome: "Arroz", descricao: "Pacote de arroz branco 5kg", preco: 24.90, quantidade: 10 }))
ProdutoServico.adicionar(Produto.new({ id: 2, nome: "Feijão", descricao: "Pacote de feijão carioca 1kg", preco: 8.50, quantidade: 15 }))
ProdutoServico.adicionar(Produto.new({ id: 3, nome: "Macarrão", descricao: "Pacote de macarrão espaguete 500g", preco: 4.75, quantidade: 20 }))
ProdutoServico.adicionar(Produto.new({ id: 4, nome: "Óleo", descricao: "Óleo de soja 900ml", preco: 6.99, quantidade: 8 }))
ProdutoServico.adicionar(Produto.new({ id: 5, nome: "Café", descricao: "Café torrado e moído 500g", preco: 16.90, quantidade: 12 }))


iniciar_menu()