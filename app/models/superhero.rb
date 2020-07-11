class Superhero
attr_reader :name, :power, :biography
attr_accessor :team
@@all = []
def initialize(hash)
    @name = hash["name"]
    @power = hash["power"]
    @biography = hash["biography"]
    @@all << self
end

def self.all
    @@all.clone.freeze
end

end