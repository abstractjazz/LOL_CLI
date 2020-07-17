#CLI CONTROLLER (responsible for user interactions) 

class LOL_CLI::CLI 

def call 
  puts "I just flew in from Albuquerque, and boy are my params tired."
  sleep 3 
  puts "But enough about me."
  sleep 2.2
  menu
  # get_jokes
  # list_jokes 
end 
  
  
def menu
  puts "Pick a joke from 1-75."
  list_jokes
  input = gets.strip 
  # binding.pry
  if input.to_i > 75 || input.to_i < 1
  puts "Is this thing on?"
  menu
  else 
  joke_delivery = @RDjokes[input.to_i-1] 
  puts "#{joke_delivery.setup}"  
  sleep 2.75
  puts "#{joke_delivery.punchline}"
  sleep 3.8 
  more_jokes
    end 
  end 

def list_jokes 
 @RDjokes = LOL_CLI::RDjokes.all
 @RDjokes.each.with_index(1) do |joke, index|
 puts "#{index}. #{joke.name}"
  end
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
  
# def menu
#   puts "Pick a joke from 1-75."
#   list_jokes
#   input = gets.strip 
#   if input.to_i > 75 || input.to_i < 1
#   puts "Is this thing on?"
# menu
#   else 
#   joke_delivery = @RD_jokes[input.to_i-1] 
#   puts "#{joke_delivery.setup}"  
#   sleep 2.75
#   puts "#{joke_delivery.punchline}"
 
#   sleep 3.8 
#   more_jokes
#     end 
#   end 
end 



  