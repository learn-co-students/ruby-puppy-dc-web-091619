require "pry"

class Dog

    @@all=[]

    def initialize(name)
        @name = name
        if @@all.include?(self)
            nil
        else
            self.save
        end
    end
    
    def name
        @name
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all=[]
    end
  
    def self.print_all  
        self.all.collect do |dog| #can't binding.pry here
            puts dog.name 
        end
    end

    def save
        @@all << self
    end

end