# Crear la clase carta con los atributos numero y pinta. (1 Punto)
# ● Agregar los getters y setters a ambos atributos.(1 Punto)
# ● Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol: 'T'. (2 Puntos)
# ● Tip 1: Para escoger un número al azar ocupar Random.rand(rango_inferior, rango_superior).
# ● Tip 2: Agregar las pintas posibles en un arreglo y ocupar el método .sample.
# ● Probar la clase creando un arreglo con 5 cartas.(1 Punto)

class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end

end

# c1 = Carta.new(15, 'D')
# puts c1

# cartas = []
pintas = ['C','D', 'T', 'E']

c1 = Carta.new(rand(1..13), pintas.sample)
    
puts c1.pinta
puts c1.numero