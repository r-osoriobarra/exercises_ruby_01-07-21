#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 2

require_relative 'card.rb'

class CardDeck
    attr_reader :cards, :new_deck

    def initialize(cards)
        valid_array(cards)
        cards.each do |i|
            cards.each do |j|
                @cards << Card.new(i.number, j.kind)
            end
        end
    end

    def shuffle_deck()
        @new_deck = self.cards.shuffle
    end

    def remove_first_card()
        self.new_deck.shift
    end

    def share()
        self.new_deck.shift(3)
    end

    def valid_array(cards)
        if cards.class != Array and cards.empty? 
            raise "Se require un array con al menos una carta" 
        end
        @cards = Array.new
    end
end

deck = CardDeck.new(Array[Card.new(8,'C'), Card.new(2, 'D'), Card.new(1, 'T')])

puts deck.cards
puts
puts deck.shuffle_deck
puts
puts deck.remove_first_card
puts
puts deck.share
