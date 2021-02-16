class Owner

  attr_accessor :dog, :cat, :pets
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def name 
    @name
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    Owner.all.clear
  end

  def cats
    Cat.all.select{|cat|cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog|dog.owner == self}
  end

  def buy_cat(new_cat)
    Cat.new(new_cat, self)
    self.cats.count
  end

  def buy_dog(new_dog)
    Dog.new(new_dog, self)
    self.dogs.count
  end

  def walk_dogs
    self.dogs.each{|dog|dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each{|cat|cat.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end