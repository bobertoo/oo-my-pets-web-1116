class Owner
  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  ALL = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []} # keys are instances of pets
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
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets[:fishes].clear
    @pets[:dogs].clear
    @pets[:cats].clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
