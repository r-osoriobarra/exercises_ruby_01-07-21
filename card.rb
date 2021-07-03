#Desafío Cuenta Bancaria - Ejercicio 1
class Card
    attr_accessor :number, :kind
    def initialize(number, kind)
        validate_number(number)
        validate_kind(kind)
    end

    def validate_number(number)
        raise "Número no válido [1,13]" if ((1..13).include? number) == false
        @number = number
    end

    def validate_kind(kind)
        raise "Pinta no válida [C, D, E, T]" if (%w[C D E T].include? kind) == false
        @kind = kind
    end

    def to_s
        "Número #{self.number}, pinta #{self.kind}"
    end
end
