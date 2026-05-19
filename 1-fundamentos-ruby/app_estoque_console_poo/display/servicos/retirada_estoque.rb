




def pesquisar_produto(escolha)
  nome_pesquisado = escolha.strip.downcase

  ProdutoServico.todos.find do |produto|
    produto.nome.downcase == nome_pesquisado
  end
end

def retirada_estoque()
  limpar_tela
  
  if ProdutoServico.todos.nil? || ProdutoServico.todos.empty?
    mensagem(
      "Você não tem nenhum produto cadastrado. Acesse o menu de cadastro de produtos e insira pelo menos 1 registro.",
      cor: :vermelho, has_timer: true, timer: 2, clean_screen: true
    )
    return
  end

  mensagem(
    "Iniciando a sessão de retirada de estoque...",
    timer: 2, has_timer: true, clean_screen: true
  )
  
  mensagem("Digite o nome do produto:")
  escolha = gets.chomp

  produto_encontrado = pesquisar_produto(escolha)

  if produto_encontrado.nil?
    mensagem(
      "Produto não encontrado!", cor: :vermelho,
      has_timer: true, timer: 2, clean_screen: true
    )
    return
  end

  limpar_tela

  mensagem(
    "==> #{produto_encontrado.nome} -------- #{produto_encontrado.quantidade}",
    cor: :verde
  )
  
  if produto_encontrado.quantidade < 1
    mensagem(
      "Você não tem nenhuma unidade em estoque!", 
      cor: :vermelho, has_timer: true,
      timer: 2, clean_screen: true
    )

    mensagem("Pressione enter para voltar")
    gets
    return
  end
  
  loop do
    mensagem("Digite o valor que deseja retirar. Caso queira cancelar, digite 0.")
    retirada = gets.chomp.to_i

    if retirada == 0
      mensagem("Nada foi alterado.")
      mensagem(
        "Retornando ao menu inicial...",
        has_timer: true, timer: 2, clean_screen: true
      )
      return

    elsif retirada < 0
      mensagem(
        "Quantidade inválida. Digite um número maior ou igual a 0.",
        cor: :vermelho, has_timer: true,
        timer: 2, clean_screen: true
      )

    elsif retirada > produto_encontrado.quantidade
      mensagem(
        "Você não possui #{retirada} unidades de #{produto_encontrado.nome}",
        cor: :vermelho, has_timer: true,
        timer: 2, clean_screen: true
      )

    else
      produto_encontrado.quantidade -= retirada
      ProdutoServico.atualizar(produto_encontrado)

      mensagem(
        "Retirada realizada com sucesso, saldo atual:",
        cor: :verde, has_timer: true, timer: 1
      )

      mensagem(
        "==> #{produto_encontrado.nome} -------- #{produto_encontrado.quantidade}",
        cor: :verde
      )

      mensagem("Pressione enter para voltar")
      gets
      limpar_tela
      return
    end
  end
end
