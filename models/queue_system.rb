class QueueSystem
    
    def initialize(queue_quantity)
        @queue_quantity = queue_quantity
        # if queue size > 1 multiple_queue_system else unique

        if(@queue_quantity > 0)
            self.create_queue_system();

        else
            puts "Error: You cannot create a queue system with 0 queues"

        end
    end

    def create_queue_system
        @queue_system = Array.new(@queue_quantity) {Array.new()}
    end

    def add_user_to_queue(index_of_queue, user)
        @queue_system[index_of_queue].push(user);
    end

    def remove_user_of_queue(index_of_queue)
        @queue_system[index_of_queue].shift();
    end

end

