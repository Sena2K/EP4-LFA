module MtMultiplicacao
  ### Estados não finais
  q0 = 'fa'           # Estado inicial
  q1 = 'faa'          # Estado de transição
  q2 = 'faaa'         # Outro estado de transição
  q3 = 'faaaa'        # Outro estado de transição
  q4 = 'faaaaa'       # Outro estado de transição
  q5 = 'faaaaaa'      # Outro estado de transição
  q6 = 'faaaaaaa'     # Outro estado de transição
  q7 = 'faaaaaaaa'    # Outro estado de transição
  q8 = 'faaaaaaaaa'   # Outro estado de transição

  ### Estado final
  q9 = 'fbbbbbbbbbb'  # Estado de aceitação

  ### Símbolo em branco
  @br = '_'

  ### Elementos do alfabeto
  @a = 'sc'           # Símbolo 'a'
  @b = 'scc'          # Símbolo 'b'
  @c = 'sccc'         # Símbolo 'c'
  @d = 'scccc'        # Símbolo 'd'

  ### Movimentação do cursor
  esq = 'e'           # Movimento para a esquerda
  dir = 'd'           # Movimento para a direita

  ### Transições da Máquina de Turing para multiplicação
  @d1 = "#{q0}#{@a}#{q1}#{@br}#{dir}"    # (q0, a) -> (q1, _, D)
  @d2 = "#{q1}#{@a}#{q1}#{@a}#{dir}"     # (q1, a) -> (q1, a, D)
  @d3 = "#{q1}#{@b}#{q2}#{@d}#{dir}"     # (q1, b) -> (q2, d, D)
  @d4 = "#{q2}#{@b}#{q2}#{@b}#{dir}"     # (q2, b) -> (q2, b, D)
  @d5 = "#{q2}#{@c}#{q2}#{@c}#{dir}"     # (q2, c) -> (q2, c, D)
  @d6 = "#{q2}#{@br}#{q3}#{@c}#{esq}"    # (q2, _) -> (q3, c, E)
  @d7 = "#{q3}#{@c}#{q3}#{@c}#{esq}"     # (q3, c) -> (q3, c, E)
  @d8 = "#{q3}#{@b}#{q4}#{@d}#{dir}"     # (q3, b) -> (q4, d, D)
  @d9 = "#{q4}#{@c}#{q4}#{@c}#{dir}"     # (q4, c) -> (q4, c, D)
  @d10 = "#{q4}#{@d}#{q4}#{@d}#{dir}"    # (q4, d) -> (q4, d, D)
  @d11 = "#{q4}#{@br}#{q5}#{@c}#{esq}"   # (q4, _) -> (q5, c, E)
  @d12 = "#{q5}#{@c}#{q5}#{@c}#{esq}"    # (q5, c) -> (q5, c, E)
  @d13 = "#{q5}#{@d}#{q5}#{@d}#{esq}"    # (q5, d) -> (q5, d, E)
  @d14 = "#{q5}#{@b}#{q4}#{@d}#{dir}"    # (q5, b) -> (q4, d, D)
  @d15 = "#{q5}#{@br}#{q8}#{@br}#{dir}"  # (q5, _) -> (q8, _, D)
  @d16 = "#{q5}#{@a}#{q6}#{@a}#{dir}"    # (q5, a) -> (q6, a, D)
  @d17 = "#{q6}#{@d}#{q6}#{@b}#{dir}"    # (q6, d) -> (q6, b, D)
  @d18 = "#{q6}#{@c}#{q6}#{@c}#{dir}"    # (q6, c) -> (q6, c, D)
  @d19 = "#{q6}#{@br}#{q7}#{@br}#{esq}"  # (q6, _) -> (q7, _, E)
  @d20 = "#{q7}#{@c}#{q7}#{@c}#{esq}"    # (q7, c) -> (q7, c, E)
  @d21 = "#{q7}#{@b}#{q7}#{@b}#{esq}"    # (q7, b) -> (q7, b, E)
  @d22 = "#{q7}#{@a}#{q7}#{@a}#{esq}"    # (q7, a) -> (q7, a, E)
  @d23 = "#{q7}#{@br}#{q0}#{@br}#{dir}"  # (q7, _) -> (q0, _, D)
  @d24 = "#{q8}#{@d}#{q8}#{@br}#{dir}"   # (q8, d) -> (q8, _, D)
  @d25 = "#{q8}#{@c}#{q9}#{@c}#{dir}"    # (q8, c) -> (q9, c, D)

  ### Método para concatenar todas as transições em uma única string
  def self.linker
    "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}#{@d11}#{@d12}#{@d13}#{@d14}#{@d15}#{@d16}#{@d17}#{@d18}#{@d19}#{@d20}#{@d21}#{@d22}#{@d23}#{@d24}#{@d25}"
  end

  ### Método para retornar a codificação da cadeia inicial aaabbb
  def self.codificacao_cadeia
    "#{@a}#{@a}#{@a}#{@b}#{@b}#{@b}"
  end
end
