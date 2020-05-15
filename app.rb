require 'pry'
class Building
    @@all = []

    attr_writer :number_of_tennants, :name
    attr_reader :number_of_tennants, :name, :address

    def initialize name, address, floors, number_of_tennants
        @name = name
        @address = address
        @floors = floors
        @number_of_tennants = number_of_tennants

        @@all << self
    end

    def average_tennants_per_floor
        @average_number_of_tennants = @number_of_tennants.to_f / @floors.to_f
        @average_number_of_tennants.round
    end

    def self.number_of_buildings
        @@all.count
    end
    
    def name_and_address
    "#{@name} is at #{@address}"
    end

end

binding.pry