def cadastro_produto(produtos)
  limpar_tela
  mensagem("iniciando cadastro de produto...", has_timer: true, timer: 2, clean_screen: true)

  loop do 
    mensagem("Digite o nome do produto:")
    nome = gets.chomp
    
    mensagem("Qual a descrição do produto #{nome}:")
    descricao = gets.to_s
    
    mensagem("Digite o preço:")
    preco = gets.to_f
  
    mensagem("Quanto tem em estoque?")
    quantidade = gets.to_i
 
    limpar_tela

    mensagem("#{nome} - #{quantidade} unidades", cor: :verde)
    mensagem("#{descricao}", cor: :verde)
    mensagem("#{preco}", cor: :verde)
    mensagem("Você confirma salvar?")
    mensagem("S - Sim")
    mensagem("N - Não")
    mensagem("C - Cancelar")

    confirma = gets.chomp.upcase
    
    case confirma
    when "S"
      produto = {
        id: Time.now.to_i,
        nome: nome,
        descricao: descricao,
        quantidade: quantidade,
        preco: preco
      }
      salvar_produto(produto, produtos)
      break
    when "N"
      mensagem("Produto não salvo.", cor: :vermelho)
      mensagem("Retomando cadastro de produtos", has_timer: true, timer: 2, clean_screen: true)
    else
      mensagem("Produto não salvo.", cor: :vermelho)
      mensagem("Saindo sem salvar ...", has_timer: true, timer: 2, clean_screen: true)
      break
    end
  end
end

def salvar_produto(produto, produtos)
  produtos << produto
  mensagem("#{produto[:nome]} salvo com sucesso", cor: :verde, has_timer: true, timer: 2, clean_screen: true)
end