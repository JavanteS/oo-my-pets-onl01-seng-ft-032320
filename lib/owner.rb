class Owner
   attr_reader :name, :species
   attr_accessor :dogs, :cats, :pets 
   
   @@all=[]
  
  def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
   @pets ={ :dogs = [], :cats = [] }
   
  end
  
  def self.all 
    @@all 
  end 
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def self.count 
    @@all.count 
  end 
  
  def self.reset_all
    @@all.clear
  end 

  def buy_cat(name)
    Cat.new(name,self)
    
  end 
  
  def buy_dog(name)
    Dog.new(name,self)
    
  end
  
  def sell_pets
    
    @cats.each do |cat| 
      cat.owner = nil 
      cat.mood = "nervous"
      
    end 
  @cats = []
  end 
  
  

  
end