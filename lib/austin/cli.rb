class CLI 
  
  def run
    welcome 
    Scraper.scrape_all_attractions
    print_all_attractions
    start_selection
  end 
  
  
  
end 