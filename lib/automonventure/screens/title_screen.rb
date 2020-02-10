require_relative "screen"

module Automonventure
  class TitleScreen < Screen
    def render()
      titleText = '
      (  ____ |\     /(  ____ (  ____ (  ____ \ 
      | (    \| )   ( | (    )| (    \| (    \/ 
      | |     | |   | | (____)| (_____| (__     
      | |     | |   | |     __(_____  |  __)    
      | |     | |   | | (\ (        ) | (       
      | (____/| (___) | ) \ \_/\____) | (____/\ 
      (_______(_______|/   \__\_______(_______/'
      titleText2 = ' 
      _______ _______   _________        _______ 
      (  ___  (  ____ \  \__   __|\     /(  ____ \
      | (   ) | (    \/     ) (  | )   ( | (    \/
      | |   | | (__         | |  | (___) | (__    
      | |   | |  __)        | |  |  ___  |  __)   
      | |   | | (           | |  | (   ) | (      
      | (___) | )           | |  | )   ( | (____/\
      (_______|/            )_(  |/     \(_______/'
      titleText3 = ' 
      _______ _______ _                   _______ _______ _______         _       
      (       (  ____ ( \                 (  ____ (  ____ (  ___  |\     /( (    /|
      | () () | (    \| (                 | (    \| (    )| (   ) | )   ( |  \  ( |
      | || || | (__   | |         _____   | (_____| (____)| (___) | | _ | |   \ | |
      | |(_)| |  __)  | |        (_____)  (_____  |  _____|  ___  | |( )| | (\ \) |
      | |   | | (     | |                       ) | (     | (   ) | || || | | \   |
      | )   ( | (____/| (____/\           /\____) | )     | )   ( | () () | )  \  |
      |/     \(_______(_______/           \_______|/      |/     \(_______|/    )_)'
      screenText = "What would you like to do? \n" \
      "1. Play the game \n" \
      "2. Exit \n" \
      "Make a choice [1,2]:"
      puts titleText
      puts titleText2
      puts titleText3

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
