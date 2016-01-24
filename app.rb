require 'tokenizer'
require "uri"

t = Tokenizer::WhitespaceTokenizer.new
text = ""

# ler o arquivo de texto
File.open('text.txt', 'r') do |file|
  while line = file.gets
    text << line
  end
end

# deixa todas os caracteres minúsculos
text.downcase!
# substitui todas as quebras-de-linha por espaços
text = text.gsub("\n", " ")

# separa todas as palavras em um array
words = t.tokenize(text)

# imprime o vetor
p words

# verifica se uma lista de palavras existe no vetor
words_list = ['hello', 'como', 'blabla']
words_found = []

words_list.each do |word|
  words_found << words.include?(word)
end

# imprime lista do resultado da busca das palavras
p words_found