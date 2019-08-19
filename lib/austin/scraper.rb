class Austin::Scraper 
  SITE = 'https://www.tripadvisor.com/Attractions-g30196-Activities-Austin_Texas.html'
  
  def self.scrape_all_attractions 
    doc = Nokogiri::HTML(open(SITE))
    
    doc.css("#FILTERED_LIST li").each.with_index(1) do |att, index| 
      name = att.css("a")[2].text 
      url = att.css("a")[0].attr("href") 
      # type = att.css("span")[0].text 
      # price = att.css("span")[0].text 
      attraction = Austin::Attraction.new(name, url, index)
    end 
  end 
  
  def self.scrape_single_attraction(attraction)
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com#{attraction.url}")) 
    
    description = doc.css("#taplc_location_detail_about_card_0")[0].css("span")[0].text
    open_hours = doc.css("#taplc_location_detail_about_card_0")[0].css("div")[6].text
  end 
  
end 