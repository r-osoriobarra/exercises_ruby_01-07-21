#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 2

require_relative 'card.rb'

class CardDeck
    attr_accessor :cards
    attr_reader :new_deck
    def initialize(cards = [])
        @cards = cards
        create_deck
    end

    def create_deck
        (1..13).each do |i|
            (%w[C D E T]).each {|j| self.cards << Card.new(i, j)}
        end
    end 

    def shuffle_deck
        @new_deck = self.cards.shuffle
    end

    def remove_first_card
        self.new_deck.shift
    end

    def share
        self.new_deck.shift(5)
    end
end

# crear full deck
full_deck = CardDeck.new

# #barajar
full_deck.shuffle_deck

# #remover la primera carta 
full_deck.remove_first_card

#repartir las 5 primeras cartas
full_deck.share
