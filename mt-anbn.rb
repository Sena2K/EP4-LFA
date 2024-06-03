module MtCodificada
  # Estados codificados
  q0 = "fa"        # Estado inicial
  q1 = "faa"       # Estado de transição
  q2 = "faaa"      # Outro estado de transição
  q3 = "faaaa"     # Outro estado de transição
  q4 = "faab"      # Outro estado de transição
  q5 = "fb"        # Estado de aceitação

  # Símbolos na fita
  @a = "sc"        # Símbolo 'a'
  @x = "scc"       # Símbolo marcado 'x'
  @b = "sccc"      # Símbolo 'b'
  @y = "scccc"     # Símbolo marcado 'y'
  @blank = "_"     # Símbolo em branco

  # Movimentos
  esq = "e"        # Esquerda
  dir = "d"        # Direita

  # Transições para a linguagem a^nb^n
  @d1 = "#{q0}#{@a}#{q1}#{@x}#{dir}"    # (q0, a) -> (q1, x, D)
  @d2 = "#{q1}#{@a}#{q1}#{@a}#{dir}"    # (q1, a) -> (q1, a, D)
  @d3 = "#{q1}#{@b}#{q2}#{@b}#{esq}"    # (q1, b) -> (q2, b, E)
  @d4 = "#{q2}#{@a}#{q2}#{@a}#{esq}"    # (q2, a) -> (q2, a, E)
  @d5 = "#{q2}#{@x}#{q0}#{@x}#{dir}"    # (q2, x) -> (q0, x, D)
  @d6 = "#{q0}#{@b}#{q3}#{@y}#{dir}"    # (q0, b) -> (q3, y, D)
  @d7 = "#{q3}#{@b}#{q3}#{@b}#{dir}"    # (q3, b) -> (q3, b, D)
  @d8 = "#{q3}#{@blank}#{q4}#{@blank}#{esq}"  # (q3, _) -> (q4, _, E)
  @d9 = "#{q4}#{@y}#{q4}#{@y}#{esq}"    # (q4, y) -> (q4, y, E)
  @d10 = "#{q4}#{@x}#{q5}#{@x}#{dir}"   # (q4, x) -> (q5, x, D)

  # Método para concatenar todas as transições em uma única string
  def self.linker
    "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}"
  end

  # Método para retornar a codificação da cadeia inicial aabb
  def self.codificacao_cadeia
    "#{@a}#{@a}#{@a}#{@b}#{@b}#{@b}"
  end
end
