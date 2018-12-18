require_relative '../models/cash_register_system'
require_relative '../models/client'
require_relative '../models/queue_system'
require_relative '../models/supermarket_system'

class SupermarketSystemController

    def initialize(queue_quantity, cash_register_quantity)
        create_supermarket_system(queue_quantity, cash_register_quantity)
    end

    def add_client_to_emptiest_queue(client)
        @supermarket_system.add_client_to_emptiest_queue(client)
    end

    def assign_client_to_empty_cash_register(empty_cash_register)
        client_to_assign = @supermarket_system.remove_first_client_from_queue(empty_cash_register)
        @supermarket_system.assign_client_to_empty_cash_register(empty_cash_register,client_to_assign)
    end

    def print_
        @supermarket_system.print_()
    end

    private

    def create_supermarket_system(queue_quantity, cash_register_quantity)
        queue_system = QueueSystem.new(queue_quantity);
        cash_register_system = CashRegisterSystem.new(cash_register_quantity)

        @supermarket_system = SupermarketSystem.new(cash_register_system, queue_system)
    end

end


sp = SupermarketSystemController.new(3,3)

sp.add_client_to_emptiest_queue(Client.new('a',20,10))

sp.add_client_to_emptiest_queue(Client.new('a',20,10))

sp.print_()

sp.assign_client_to_empty_cash_register(0);

sp.print_()

