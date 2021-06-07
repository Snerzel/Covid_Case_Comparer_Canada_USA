class CovidCaseComparer::Ontario
attr_accessor :cases, :url, :vaccinated, :vax_url

  def self.today
    case_a = []
    doc = Nokogiri::HTML(open("https://www.oha.com/news/updates-on-the-novel-coronavirus"))
    cases = doc.search("td.ms-rteTableEvenCol-3")
    
    cases.select do |r|
      case_a << r.text
    end
    @on_cases = case_a[7].tr('+', '').gsub(/\s+/, "")
    
    puts "Ontario's cases are #{@on_cases} today."
    
  end
  
  def self.vax
    vax_a = []
    doc = Nokogiri::HTML(open("https://www.oha.com/news/updates-on-the-novel-coronavirus"))
    cases = doc.search("td.ms-rteTableEvenCol-3")
    
    cases.select do |r|
      vax_a << r.text
    end
    @on_vax = vax_a[12].gsub(/\s+/, ",")
    
    puts "Ontario has administered #{@on_vax} total!"
    
  end
  
end