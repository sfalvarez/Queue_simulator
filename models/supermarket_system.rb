
class SupermarketSystem

    def initialize(registers_system, queue_system)
        @registers_system = registers_system
        @queue_system = queue_system

    end

    def add_client_to_emptiest_queue(user)
        
        index_of_queue = @queue_system.get_emptiest_queue()
        @queue_system.add_client_to_queue(index_of_queue, user)

    end

    def remove_first_client_from_queue(index_of_queue)
        removed_client = @queue_system.remove_client_of_queue(index_of_queue)
        return removed_client
    end

    def assign_client_to_empty_cash_register(empty_cash_register, client_to_assign)
        @registers_system.add_client_to_cash_register(empty_cash_register, client_to_assign)
    end

    def print_
        @registers_system.print_()
        @queue_system.print_() 
    end
end


