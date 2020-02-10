require_relative "automonventure/version"
require_relative "automonventure/screens/screen_manager"

module Automonventure
  class Error < StandardError; end
  # Your code goes here...

  screen_manager = ScreenManager.new()
  
  loop do
    screen = screen_manager.get_current_screen
    screen.render
    result = screen.process
    if result == "EXIT"
      puts "Exiting..."
      return
    end

    screen = screen_manager.get_next_screen(result)
  end
end
