class CLI 
  
  def run
    welcome 
    Scraper.scrape_all_attractions
    print_all_attractions
    start_selection
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
  
  
end 