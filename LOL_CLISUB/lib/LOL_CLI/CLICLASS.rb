#CLI CONTROLLER (responsible for user interactions) 

class LOL_CLI::CLI 

def call 
  puts "I just flew in from Albuquerque, and boy are my params tired."
  sleep 3 
  puts "But enough about me."
  sleep 2.2
  menu
end 
  
def get_jokes 
  
  @jokes = LOL_CLI::RD_jokes.all
end 
  
 def goodbye
  puts "It's been a pleasure. Be sure to tip your programmer."
  end 

def more_jokes
  puts "I'm here all night. Do you want more jokes? [y/n]" 
  input = gets.strip
  case input 
  when "n"
    goodbye 
  when "y"
    menu
    end 
  end 

def menu
  puts "Pick a number from 1-75."
  input = gets.strip 
  if input.to_i > 75 || input.to_i < 1
  puts "Is this thing on?"
  menu
  else 
  get_jokes 
  sleep 4.2 
  more_jokes
    end 
  end 
end 

  