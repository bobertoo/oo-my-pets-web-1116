require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.length
  end

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |pet_group, pet_thing|
      pet_thing.each {|a_pet| a_pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish,"\
    " #{pets[:dogs].length} dog(s),"\
    " and #{pets[:cats].length} cat(s)."
  end
end
