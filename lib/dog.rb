# Add your code here
require "pry"

class Dog
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save    #calls the method to all a new instance into the @@all array 
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each {|dog| puts dog.name} #goes through the self instance and using .each to print the name
    end

    def self.clear_all
        @@all.clear
    end

    def save    #refactors code for us to add self to the @@all array using a method
        @@all << self
    end

end
