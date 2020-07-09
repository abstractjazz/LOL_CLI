class LOL_CLI::RD_jokes

attr_accessor :name, :setup, :punchline, :url 
  
def self.all 
#Scrape RD and return jokes from the site 

self.scrape_jokes

end 


def self.scrape_deals 
deals = [ ]


deals 


#go to RD, find the joke_1
#extract the properties 
#instatiate a joke 

joke_1 = self.new 
 joke_1.name = "Switzerland"
 joke_1.setup = "What's the best thing about Switzerland?"
 joke_1.punchline = "I don't know, but the flag is a big plus."
 joke_1.url = "https://www.rd.com/list/short-jokes/"

 joke_2 = self.new 
 joke_2.name = "Invention"
 joke_2.setup = "I invented a new word!"
 joke_2.punchline = "Plagiarism!"
 joke_2.url = "https://www.rd.com/list/short-jokes/"

[joke_1, joke_2]  

  end 
end 

#returns instances of jokes 

  # puts "What's the best thing about Switzerland?" 
  # sleep 2.2
  # puts "I don't know, but the flag is a big plus."  
 