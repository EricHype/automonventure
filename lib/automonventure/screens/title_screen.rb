require_relative "screen"

module Automonventure
  class TitleScreen < Screen
    def render()
      screenText = "What would you like to do? \n" \
      "1. Play the game \n" \
      "2. Exit \n" \
      "Make a choice [1,2]:"
      puts screenText
    end
    
    def process()
      input = gets.chomp
      case input
      when "1"
        return "PLAY"
      when "2"
        return "EXIT"
      else
        return "INVALID"
      end 
    end
  end
end
