class CLI 
  
  def run
    welcome 
    Scraper.scrape_all_attractions
    print_all_attractions
    start
  end 
  
  def welcome 
    puts "" 
    puts "                         Welcome to Austin, Texas!"
    puts "" 
    puts "                   The Live Music Capital of the World!"
    puts "" 
    puts "" 
    puts "Enter the number of the attraction you are interested in, for more information." 
  end 
  
  def print_all_attractions
  end 
  
  def start
    input = "" 
    while input != "exit" do 
      input = gets.strip.downcase 
      
      if (1..30).include?(input.to_i)
        attraction = Attraction.find_attraction(input.to_i)
        Scraper.single_attraction_scraper(attraction)
        display_attraction(attraction)
        
        puts ""
        puts "Want to see a different attraction? Type 'list' to view the attractions again." 
        puts ""
        puts "Otherwise, type 'exit' to exit."
        puts ""
      end 
    end 
      
  end 
  
  def display_attraction
  end 
  
  
end 