class SupermarketController

    def initialize
    end

    def create_supermarket_system(queue_quantity, cash_register_quantity)
        queue_system = QueueSystem.new(queue_quantity);
        cash_register_system = CashRegisterSystem.new(cash_register_quantity)

    end
end