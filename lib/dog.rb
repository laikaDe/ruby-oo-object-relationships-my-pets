class Dog 

  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []
  @pets = []

  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def pets=(cats,dogs)
    @pets << self.cats
    @pets << self.dogs
  end

  def list_pets
    if @pets.count > 0
      @pets
    end
  end


  def self.all
    @@all
  end
end