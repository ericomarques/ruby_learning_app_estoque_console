def mensagem(msg, cor: :amarelo, has_timer: false, timer: 5, clean_screen: false)
  texto_colorido = send(cor, msg)
  puts texto_colorido

  sleep(5) if has_timer
  limpar_tela if clean_screen
end



def limpar_tela
  system("clear")
end

def verde(texto)
  "\e[32m#{texto}\e[0m"
end

def vermelho(texto)
  "\e[31m#{texto}\e[0m"
end

def amarelo(texto)
  "\e[33m#{texto}\e[0m"
end