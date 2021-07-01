#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 1

class User

    def initialize(name)
        @name = name
    end
    
    def total_balance()
    end

    def transfer(ammount, bank_account)
        
    end
end

class BankAccount
    attr_reader :bank_name, :number_account, :balance
    
    def initialize(bank_name, number_account, balance = 0)
        @bank_name = bank_name
        @number_account = number_account
        @balance = balance
    end
end

account1 = BankAccount.new('Banco Estado', 987, 5000)
account2 = BankAccount.new('Santander', 456)

puts account1, account2, account1.balance, account2.balance