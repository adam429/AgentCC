require "sinatra"

set :port, ENV.fetch("PORT", 3000)
set :bind, "0.0.0.0"

get "/" do
  erb :index
end
