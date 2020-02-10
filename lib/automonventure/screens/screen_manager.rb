require_relative "play_screen"
require_relative "title_screen"

module Automonventure
  class ScreenManager
    
    @@screen_states = {
      "PLAY" => PlayScreen  
    }

    def initialize
      @current_screen = TitleScreen.new()    
    end

    def get_current_screen
      return @current_screen
    end
    
    def get_next_screen(next_screen)
      clazz = @@screen_states[next_screen]
      @current_screen = clazz.new()
    end
  end
end
