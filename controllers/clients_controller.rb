class ClientsController

    def initialize(time_of_arrival, time_in_cash_register)
        random = Random.new
        random_letter_num = random.rand(1..26)

        @time_of_arrival = time_of_arrival
        @time_in_cash_register = time_in_cash_register
        @name_letter = (random_letter_num+96).chr
    end

    def create_client
        client = Client.new(@time_of_arrival, @time_in_cash_register,
                                                        @name_letter)
        
        return client
    end
end