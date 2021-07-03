#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 1

class BankAccount
    attr_reader :bank_name, :number_account, :ammount, :transfer_account
    attr_accessor :balance
    def initialize(bank_name, number_account, balance = 0)
        @bank_name = bank_name
        @number_account = number_account
        @balance = balance
    end

    def transfer(ammount, transfer_account)
        valid_transfer(ammount)
        self.balance -= self.ammount
        transfer_account.balance += self.ammount
    end

    def valid_transfer(ammount)
        raise "Saldo insuficiente" if ammount > self.balance 
        @ammount = ammount
    end
end

class User
    attr_reader :user_name, :bank_accounts
    def initialize(user_name, bank_accounts)
        @user_name = user_name
        valid_array(bank_accounts)
    end

    def total_balance
        total = 0 
        self.bank_accounts.each {|i| total += i.balance}
        return total
    end

    def valid_array(bank_accounts)
        if bank_accounts.class != Array and bank_accounts.empty? 
            raise "Se require un array con al menos una cuenta bancaria" 
        end
        @bank_accounts = bank_accounts        
    end
end

#account1 = BankAccount.new('Banco Estado', 987, 5000)
#account2 = BankAccount.new('Santander', 456, 5000)
#account1.transfer(5000, account2)
#puts account1.balance, account2.balance
