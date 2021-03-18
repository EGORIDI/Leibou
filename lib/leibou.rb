# This code should read a csv table ans generate QR2 images of them.
# The entry file must be called bits.csv and contain a first column named 'Etiqueta'
# and another column called 'Imagem' and the first column shall contain the name 
# of the labe file while the second should have the respective internet link.

# Este programa deve ler uma tabela em csv e gerar imagens QR Code das mesmas.
# O arquivo de entrada de se chamar bits.csv e deve conter uma coluna 'Etiqueta' e outra 'Imagem',
# sendo que a coluna 'etiqueta' deve conter o texto com o nome do arquivo a ser gerado para a 
# etiqueta. 
# A coluna 'Imagem' deve conter o link http para a imagem do bit na internet. 


module GeraEtiqueta
  #
  
  def gera_tabela(file)
    require 'csv'
    table = CSV.parse(File.read(file), headers: true, col_sep: ",")
    return table
  end
  
  def mostra_tabela(tabela)
    #
    puts "Olhaí a tabela... (Check the following table...)"
    puts
    puts tabela
    puts
  end
  
  def mostra_linha(tabela)
    #
    # Agora linha a linha
    puts "Agora linha  a linha (And now, line by line):"
    tabela.each { |line| puts line }
    puts
  end
  
  
  def mostra_etiqueta(tabela)
    #
    # Agora só as etiquetas
    puts
    puts "Agora só as etiquetas (Now only the labels...)"
    tabela.each { |line| puts line["Etiqueta"] }
    puts
  end
  
  def mostra_imagem(tabela)
    #
    # Agora só os links para as imagens
    puts "Agora só os links (Now only the links...)"
    tabela.each { |line| puts line["Imagem"] }
    puts
    end
  
  def cria_qr(file, bit)
    #
    require 'barby'                           # => true
    require 'barby/barcode/qr_code'           # => true
    require 'barby/outputter/png_outputter'   # => true
    blob = Barby::QrCode.new(bit, level: :q, size: 10).to_png
    File.open("#{file}.png", 'wb'){|f| f.write blob}
    puts "O QR Code do #{file} foi criado! (The QR Code for #{file} has been created)"  
  end
  
  
  def cria_etiqueta(tabela)
    puts "Vamos criar as etiquetas (Let's create the labels now...)."
    tabela.each do |line| 
      file = line["Etiqueta"]
      bit =  line["Imagem"]
      puts "Criando QRCode para #{file} on link #{bit}"
      puts "(Creating QRCode for #{file} on the link #{bit})"
      cria_qr(file, bit)
    end
  end

  def self.label
    #
    arquivo_de_entrada = 'bits.csv'
    puts "O arquivo de entrada foi reconhecido com sucesso( ;P )."
    puts "(The entry file has been successfully recognized)"
    puts
    
    tabela = gera_tabela(arquivo_de_entrada)
    puts "A tabela foi criada."
    puts "(The table has been created.)"
    puts
    
    
    cria_etiqueta(tabela)
    puts "As etiquetas foram criadas... (rapaaaaz, não é que criou mesmo?)"
    puts "(The labels have been created...)"
    puts
  end
end





# mostra_tabela(tabela)
# mostra_linha(tabela)
# mostra_etiqueta(tabela)
# mostra_imagem(tabela)

