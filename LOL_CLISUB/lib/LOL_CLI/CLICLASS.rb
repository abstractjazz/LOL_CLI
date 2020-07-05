#CLI CONTROLLER (responsible for user interactions) 

class LOL_CLI::CLI 

def call 
  puts "I just flew in from Albuquerque, and boy are my params tired."
  sleep 3 
  puts "But enough about me."
  sleep 2.2
  get_jokes
end 
  
def get_jokes
  puts "How many jokes would you like to see? Pick a number from 1-75."
  input = gets.strip 
  if input == (1..75)
  puts input 
  else 
  puts "Is this thing on? Pick a number from 1-75."
  
    end 
  end 
end 
