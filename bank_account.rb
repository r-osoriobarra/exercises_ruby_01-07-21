#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 1

class User
    attr_reader :name, :bank_account

    def initialize(name, bank_account)
        if bank_account.class != Array and bank_account.empty? 
            raise "Se require un array con al menos una cuenta bancaria" 
        else
            @name = name
            @bank_account = bank_account        
        end
    end

    def total_balance()
        total_accounts = 0 

        self.bank_account.each do |i|
            total_accounts += i.balance
        end

        return total_accounts
    end
end

class BankAccount
    attr_reader :bank_name, :number_account, :ammount, :bank_account
    attr_accessor :balance
    
    def initialize(bank_name, number_account, balance = 0, ammount = 'nil', bank_account = 'nil')
        @bank_name = bank_name
        @number_account = number_account
        @balance = balance
        @ammount = ammount
        @bank_account = bank_account
    end

    def transfer(ammount, bank_account)
        raise "Saldo insuficiente" if ammount > self.balance 
        self.balance -= ammount
        bank_account.balance += ammount
    end
end

account1 = BankAccount.new('Banco Estado', 987, 5000)
account2 = BankAccount.new('Santander', 456, 5000)
account3 = BankAccount.new('Santander', 459, 1500)
account1.transfer(5000, account2)
# puts account1.balance, account2.balance

user1 = User.new('user_name',[account1, account3])
#puts user1.total_balance
