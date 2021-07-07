#Desafío cuentas bancarias y barajas de cartas
#Ejercicio 1

class BankAccount
    attr_reader :bank_name, :number_account, :amount, :transfer_account
    attr_accessor :balance
    def initialize(bank_name, number_account, balance = 0)
        @bank_name = bank_name
        @number_account = number_account
        @balance = balance
    end

    def transfer(amount, transfer_account)
        valid_transfer(amount)
        self.balance -= self.amount
        transfer_account.balance += self.amount
    end

    def valid_transfer(amount)
        raise "Saldo insuficiente" if amount > self.balance 
        @amount = amount
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
        if bank_accounts.class != Array or bank_accounts.empty? 
            raise "Se require un array con al menos una cuenta bancaria" 
        end
        @bank_accounts = bank_accounts        
    end
end

#transferencia entre 2 cuentas
account1 = BankAccount.new('Banco de Chile', 987, 5000)
account2 = BankAccount.new('Banco Estado', 456, 5000)
account1.transfer(5000, account2)

#saldo total de todas las cuentas de un usuario
account3 = BankAccount.new('Santander', 457, 2500)
user = User.new('Alexis Sanchez', [account2, account3])
user.total_balance
