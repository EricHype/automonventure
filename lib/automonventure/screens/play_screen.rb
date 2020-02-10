require_relative "screen"

module Automonventure
  class PlayScreen < Screen
    def render()
      screenText = "You are in a dark cubicle"
      puts screenText
    end
    
    def process()
      input = gets.chomp
      case input
      when "EXIT"
        return "EXIT"
      else
        return "INVALID"
      end 
    end
  end
end