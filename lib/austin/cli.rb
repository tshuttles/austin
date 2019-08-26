class Austin::CLI 
  
  def run
    welcome 
    Austin::Scraper.scrape_all_attractions
    print_all_attractions
    start
  end 
  
  def welcome 
    puts "" 
    puts "                    Welcome to Austin, Texas!".light_blue
    puts "" 
    puts "               The Live Music Capital of the World!".light_blue
    puts "" 
    puts "" 
  end 
  
  def print_all_attractions
    puts ""
    puts "                  THE TOP ATTRACTIONS IN AUSTIN!".light_blue
    puts ""
    Austin::Attraction.all.each.with_index(1) do |att, index|
      puts "#{index} #{att.name}".white
    end
    menu
    # puts ""
    # puts "Enter the number of the attraction you are interested in learning more about!".green
    # puts ""
    # puts "Otherwise, type 'exit' to exit.".red
    # puts "" 
  end 
  
  def start
    input = "" 
    while input != "exit" do 
      input = gets.strip.downcase 
      
      if (1..30).include?(input.to_i)
        attraction = Austin::Attraction.find_attraction(input.to_i)
        Austin::Scraper.scrape_single_attraction(attraction)
        display_attraction(attraction)
        menu
        # puts ""
        # puts "Want to see a different attraction? Type 'list' to view the attractions again.".green
        # puts ""
        # puts "Otherwise, type 'exit' to exit.".red
        # puts ""
      elsif input == "list"
        # puts ""
        # puts ""
        # puts "                    THE TOP ATTRACTIONS IN AUSTIN!".light_blue
        # puts ""
        # puts "Enter the number located next to the attraction you would like details on:".green
        # puts ""
        # puts "                    Otherwise, type 'exit' to exit.".red
        # puts ""
        # puts "" 
        print_all_attractions
      elsif input != "exit"
        puts "" 
        puts "Invalid entry. Please type: a number for information on an attraction, 'list', or 'exit'.".yellow
        puts ""
      end
    end 
  end 
  
  def display_attraction(attraction)
    puts "---------------------------------------------------------"
    puts ""
    puts "Attraction:   #{attraction.name.upcase}"
    puts ""
    puts "Description:  #{attraction.description}"
    puts ""
    puts "Open Hours:   #{attraction.open_hours}"
    puts ""
    puts "Website:      https://www.tripadvisor.com#{attraction.url}"      
    puts ""
    puts "---------------------------------------------------------"
  end 
  
  def menu 
    puts ""
    puts "Want to see a different attraction? Type 'list' to view the attractions again.".green
    puts ""
    puts "Otherwise, type 'exit' to exit.".red
    puts ""
  end 
  
end 