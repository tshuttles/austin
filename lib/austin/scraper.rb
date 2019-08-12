class Scraper 
  SITE = 'https://www.tripadvisor.com/Attractions-g30196-Activities-Austin_Texas.html'
  
  def self.scrape_all_attractions 
    doc = Nokogiri::HTML(open(SITE))
    
    doc.css("attractions-attraction-overview-pois-PoiGrid__wrapper--2H3Mo li").each.with_index(1) do |att, index| 
      name = att.css("a")[0].text 
      url = att.css("a")[0].attr("href")
      type = 
      price = 
      # attraction = Austin::Attraction.new(name, url, type, price, index)
    
    
  end 
  
  
  
  
end 