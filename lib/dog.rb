class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name = "Daisy")
    @name = name
    @mood = "nervous"
  end
end
