class CashRegister
    
    def initialize(cash_register_quantity)
        @cash_registers_quantity = cash_registers_quantity
        
        self.create_cash_register_system();
    end

    def create_cash_register_system
        @cash_register_system = Array.new(@cash_registers_quantity)
    end

    def add_client_to_cash_register(cash_register_index, client)
        @cash_register_system[cash_register_index].push(client)
    end

    def remove_client_of_register
        @cash_register_system[cash_register_index].pop(client)
    end
end