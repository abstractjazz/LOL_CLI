class LOL_CLI::RDjokes

attr_accessor :name, :setup, :punchline

def self.all 
#Scrape RD and return jokes from the site 

self.scrape_jokes

end 

def self.scrape_jokes

jokes = []

jokes << self.scrape_rd 

jokes 

end 
  
  def self.scrape_rd
  
    doc = Nokogiri::HTML(open("https://www.rd.com/list/short-jokes/")) 
   
    joke = self.new
    joke.name = doc.search("h2").text
    joke.setup = doc.css("h2").text
#punchline = doc.search("h2").text
    joke 
   
  end 
end 


