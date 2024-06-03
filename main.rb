require_relative 'maquina-turing-universal'
require_relative 'mt-anbncn'

# Chame o método linker e codificacao_cadeia para definir a variável entrada
entrada = MtKuroda.linker + "$" + MtKuroda.codificacao_cadeia

mt = MTU.new

puts "Entrada:\n #{entrada}"
puts "Decidiu? #{mt.processar(entrada)}"
puts "Fita Resultante:\n #{mt.fita_com_marca}"
puts "Cursor parou em #{mt.cursor}"
puts "Cursor no estado #{mt.estado}"
puts "Cursor está lendo \"#{mt.fita[mt.cursor]}\""
