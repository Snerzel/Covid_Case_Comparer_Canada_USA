class CovidCaseComparer::California
  attr_accessor :cases, :url, :vaccinated, :vax_url
  
  def self.today
    doc = Nokogiri::HTML(open("https://covid19.ca.gov/state-dashboard/"))
    @cal_cases = doc.css("div#total-cases-today").text.strip
    
    puts "California's cases are #{@cal_cases}."
    
  end
  
  def self.vax
    doc = Nokogiri::HTML(open("https://covid19.ca.gov/state-dashboard/"))
    @cal_vax = doc.css("div#total-vaccines-number").text.gsub(/\s+/, " ").strip
    
    puts "California has administered #{@cal_vax}!"
    
    
  end
  
 
  
end
   