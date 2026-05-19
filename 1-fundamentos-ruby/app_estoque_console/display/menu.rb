def iniciar_menu(produtos=[])

  loop do
    mensagem("=========== Escolha uma das opções abaixo: ===========")
    mensagem("1 - Cadastro de produtos")
    mensagem("2 - Lista de produtos")
    mensagem("3 - Retirada do estoque")
    mensagem("4 - Sair")

    opcao = gets.to_i

    case opcao
    when 1
      cadastro_produto(produtos)
    when 2
      listar_produtos(produtos)
    when 3
      retirada_estoque(produtos)
    when 4
      mensagem("Saindo. Até a próxima", cor: :verde, has_timer: true, timer: 2, clean_screen: true)
      exit
    else
      mensagem("Oção inválida, escolha outra", cor: :vermelho, has_timer: true, timer: 2, clean_screen: true)
    end
  end
end