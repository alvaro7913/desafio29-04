# Crear la clase con el nombre CuentaBancaria (1 Punto) = ok - línea 9
# ● Los métodos getter y setter para el atributo nombre_de_usuario (1 Punto) = ok - línea 10
# ● Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos. (1 Punto) = ok - linea  11 a la 14 (exceptuando línea 12)
# ● Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número de dígitos distinto a 8. (se puede ocupar el método .digits para obtener los dígitos y .count para contarlos) (1 Punto) ok - línea 12
# ● Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP (1pto), este valor puede ser 1 o 0. Por defecto será 0. - ok modifica línea 11 y 12 y 14 con los vip
# ● Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un prefijo '1-' si es vip y '0-' si no lo es. - modificamos numero de cuenta como variable antes usada a solo cuenta para cimplir con la creación del nuevo metodo enunciado en esta sentencia. - se agrega línea 17
# Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver '1-00112233'. (1 Punto)

class CuentaBancaria
    attr_accessor :nombre_usuario
    def initialize(nombre_usuario, cuenta, vip = 0)
        raise RangeError, 'El número de cuenta no tiene 8 dígitos' if cuenta.digits.count != 8
        @nombre_usuario = nombre_usuario
        @cuenta = cuenta
        @vip = vip
    end
    def numero_de_cuenta
        "#{@vip}-#{@cuenta}"
    end
end

#a continuación pondré los datos de prueba del codigo, considear que los 0 a la izquierda hace perder la programación
puts CuentaBancaria.new('Alvaro', 12345678, 1).numero_de_cuenta