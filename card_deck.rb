#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 2

require_relative 'card.rb'

class CardDeck
    attr_reader :cards, :new_deck
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

    def draw_first_card
        self.new_deck.pop
    end

    def deal_cards
        self.new_deck.pop(5)
    end
end

# crear full deck
full_deck = CardDeck.new

# #barajar
full_deck.shuffle_deck

# #remover la primera carta 
full_deck.draw_first_card

#repartir las 5 primeras cartas
full_deck.deal_cards
