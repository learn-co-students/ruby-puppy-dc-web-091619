class Dog
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        var = self.all.map do |pup|
        pup.name    
        end  
        puts var  
    end

    def self.clear_all
        self.all.clear
    end

    def save
        @@all << self
    end
    
end