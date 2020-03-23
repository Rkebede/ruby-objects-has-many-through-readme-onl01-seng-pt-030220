class Waiter

attr_accessor :name, :yrs_experience
  
  @@all = [ ]
  
  def initialize(name, age)
    @name = name 
    @yrs_experience = yrs_experience
    @@all << self
  end 
  
  def self.all
    @@all
  end 

  def waiters
    Customer.all.select do |customer| 
      customer.waiter == self
    end
  end 
end