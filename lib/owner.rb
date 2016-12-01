class Owner
  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  ALL = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    ALL << self
  end

  def self.all
    ALL
  end

  def self.reset_all
    ALL.clear
  end

  def self.count
    ALL.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    feesh = Fish.new(name)
    @pets[:fishes] << feesh
  end

  def buy_cat(name)
    kitty = Cat.new(name)
    @pets[:cats] << kitty
  end

  def buy_dog(name)
    doge = Dog.new(name)
    @pets[:dogs] << doge
  end

  def walk_dogs
  end

end
