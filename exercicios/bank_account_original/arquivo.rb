class Arquivo
  def initialize
    @nome_arquivo = "saldo.txt"
  end

  def salvar
    arquivo = File.open(@nome_arquivo, "a")
    arquivo.puts(descricao)
    arquivo.close
  end

  def procurar(query)
    arquivo = File.open(@nome_arquivo, "r")
    linhas_encontradas = [] 

    arquivo.each do |linha|
    	if (linha.downcase.include? query)
              linhas_encontradas << linha
    	end
    end

    arquivo.close
    linhas_encontradas
  end

  def atualizar(accounts)
    arquivo = File.open(@nome_arquivo, "w")

    accounts.each do |account|
      arquivo.puts(descricao)
    end

    arquivo.close

  end
  
  def deletar
    File.delete(@nome_arquivo)
  end
end



