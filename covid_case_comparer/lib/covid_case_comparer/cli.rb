class CovidCaseComparer::CLI
  def call
    puts "Today's cases!"
    daily_cases
    vax_prompt
  end
  
  def daily_cases

    @cases_ca = CovidCaseComparer::California.today
    @cases_on = CovidCaseComparer::Ontario.today
  end
  
  def vax_prompt
    puts "Would you like to see vaccinations?"
    input = gets.strip
    case input
    when "yes"
      @vax_ca = CovidCaseComparer::California.vax
      @vax_on = CovidCaseComparer::Ontario.vax
      
    when "no"
      puts "Okay bye!"
    else
      puts "Oh No! I don't know what to do with that!"
      vax_prompt
    end
  end
end