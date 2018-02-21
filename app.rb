class Application < Sinatra::Base
  # Write your code here!

  get '/' do
    
    
    erb :index
  end
  
  post '/greet' do
    params["name"].inspect
    
  end
end