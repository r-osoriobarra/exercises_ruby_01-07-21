#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 2

class Card
    attr_accessor :number, :kind

    def initialize(number, kind)
        if (1..13).include? number and Array['C', 'D', 'E', 'T'].include? kind
            @number = number
            @kind = kind
        else
            raise RangeError "Número o pinta fuera de rango"
        end
    end
end