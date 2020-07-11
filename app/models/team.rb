class Team
    attr_reader :name, :motto
    attr_accessor :members
    @@all = []
    def initialize(hash)
        @name = hash["name"]
        @motto = hash["motto"]
        @@all << self
    end
    
    def self.all
        @@all.clone.freeze
    end
    end