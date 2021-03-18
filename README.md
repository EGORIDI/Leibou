# Leibou
A simple QRCode Label generator gem.

English
Leibou (it sounds roughly as 'label' when read by a Portuguese speaker) has been created to simply generate a set of QR Code files to be used as labels to be attached to inventory items. Originally it was devised to link the merchandise (in the case, porcelain tile samples) with their respective images on the internet so that the client on the shop could easily check on a smartphone or tablet the complete pattern on the entire piece (sometimes big and complex, like marble inspired porcelain tiles), having only a small bit on hands.

To produce your labels, simply create on the same directory a CSV file (starting from a spreadsheet, for instance, and really using commas to separate columns) with the first column (the column "A" on a spreadsheet) labeled as "Etiqueta" and the second ("B") labeled as "Imagem". The execution of the program will generate a set of .png labels named after the names on the first column ("Etiqueta") with their QRCodes pointing to the internet links contained on the second column ("Imagem"), line by line.

Check the available methods for further manipulation of the CSV table and generation of individual labels.

This gem relies on the 'CSV' gem for reading and interpreting the CSV table as well as on the 'barby' gem to generate the QRCode.

Note - as most methods and the very module are in Portuguese, I'll be translating them to alias so any english speaker can use it.

Portuguese
Leibou (que se lido em português deve soar como 'label') foi feito para gerar etiquetas QR Code (aquele código de barras 2D) para serem coladas em produtos de estoque. Originalmente foi criada para ligar as mercadorias (e, no caso, as amostras de porcelanato) com suas respectiva imagens na internet de modo que o cliente na loja pudesse facilmente conferir num smartphone ou tablet o padrão completo de uma peça inteira (que às vezes é grande e complexa, como no caso das placas de porcelanato inspiradas em mármore), tendo em mãos apenas uma pequena amostra ("bit").

Para produzir as etiquetas, simplesmente crie no mesmo diretório um arquivo CSV (começando de uma planilha eletrônica, por exemplo e realmente usando vírgulas na separação das colunas) com a primeira coluna (a coluna "A" na planilha) nomeada como "Etiqueta" e a segunda ("B") nomeada como "Imagem". A execuçã do programa vai gerar u conjunto de etiquetas em formato .png nomeadas segundo os nomes da primeira coluna ("Etiqueta") com os seus QRCodes apontando para os links contidos na segunda coluna (intitulada "Imagem"), linha a linha.

Confira os demais métodos disponíveis para maior manipulação da tabela CSV e a geração de etiquetas individuais.  

Esta gem (biblioteca do ruby) se apóia na gem 'CSV' para a manipulação e interpretação de arquivos CSV e na gem 'barby' para gerar os arquivos .png com os códigos QR2.