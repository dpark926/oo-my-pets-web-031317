require 'pry'
class Owner
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def initialize(species = "human")
    @species = species
    @@all << self
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    # self.pets[:fishes] = Fish.new(name)

    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    # self.pets[:fishes] = Cat.new

    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    # self.pets[:fishes] = Dog.new

    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |each_dog_instance|
      each_dog_instance.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |each_cat_instance|
      each_cat_instance.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |each_fish_instance|
      each_fish_instance.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.each do |each_instance_array|
      each_instance_array.each do |each_instance|
        each_instance.mood = "nervous"
      end
    end

    @pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
# {:dogs=>
#   [#<Dog:0x007fa81e540e20 @mood="happy", @name="Fido">,
#    #<Dog:0x007fa81e540b28 @mood="nervous", @name="Daisy">],
#  :fishes=>[#<Fish:0x007fa81e540d30 @mood="happy", @name="Nemo">],
#  :cats=>
#   [#<Cat:0x007fa81e540a60 @mood="nervous", @name="Mittens">,
#    #<Cat:0x007fa81e540da8 @mood="happy", @name="Tabby">]}
