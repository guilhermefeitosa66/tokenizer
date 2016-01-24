require 'tokenizer'
require "uri"

t = Tokenizer::WhitespaceTokenizer.new
text = ""

# ler o arquivo
File.open('text.txt', 'r') do |file|
  while line = file.gets
    text << line
  end
end

p t.tokenize(text)
