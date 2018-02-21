class Application < Sinatra::Base
  # Write your code here!

  get '/' do
    
    
    erb :index
  end
  
  post '/greet' do
    erb :greet
    
  end
  
  get '/avg-price' do
  
    require 'nokogiri'
    require 'open-uri'

    page = open("https://newyork.craigslist.org/search/aap").read
    doc = Nokogiri::HTML(page)

    prices = doc.search("span.result-price").collect{|e| e.text.gsub("$", "").to_i}

    "The average price is #{prices.inject(:+)/prices.size}" 
  end
end