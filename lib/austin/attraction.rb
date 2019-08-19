class Austin::Attraction
  
  attr_accessor :name, :type, :price, :url, :index, :description, :open_hours 
  
  @@all = [] 
  
  def initialize(name, url, index)
    @name = name 
    # @type = type 
    # @price = price 
    @url = url 
    @index = index 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.find_attraction(i)
    self.all.find {|att| att.index == i}
  end
  
end 