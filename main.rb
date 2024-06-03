require_relative 'maquina-turing-universal'
require_relative 'mt-anbncn'
require_relative 'mt-anbn'
require_relative 'mt-multiplicacao'

puts "====================================================================="

entrada = MtCodificada.linker + '$' + MtCodificada.codificacao_cadeia
mt = MTU.new

puts "Entrada:\n #{entrada}"
puts "Decidiu? #{mt.processar(entrada)}"
puts "Fita Resultante:\n #{mt.fita}"
puts "Cursor parou em #{mt.cursor}"
puts "Cursor no estado #{mt.estado}"
puts "Cursor está lendo \"#{mt.fita[mt.cursor]}\""

puts "====================================================================="

entrada = MtKuroda.linker + '$' + MtKuroda.codificacao_cadeia
mt = MTU.new

puts "Entrada:\n #{entrada}"
puts "Decidiu? #{mt.processar(entrada)}"
puts "Fita Resultante:\n #{mt.fita}"
puts "Cursor parou em #{mt.cursor}"
puts "Cursor no estado #{mt.estado}"
puts "Cursor está lendo \"#{mt.fita[mt.cursor]}\""

puts "====================================================================="

entrada = MtMultiplicacao.linker + '$' + MtMultiplicacao.codificacao_cadeia
mt = MTU.new

puts "Entrada:\n #{entrada}"
puts "Decidiu? #{mt.processar(entrada)}"
puts "Fita Resultante:\n #{mt.fita}"
puts "Cursor parou em #{mt.cursor}"
puts "Cursor no estado #{mt.estado}"
puts "Cursor está lendo \"#{mt.fita[mt.cursor]}\""