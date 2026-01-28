require "sinatra"

set :port, ENV.fetch("PORT", 3000)
set :bind, "0.0.0.0"
set :permitted_hosts, [/\.railway\.app\z/, "localhost"]

get "/" do
  erb :index
end

get "/healthz" do
  status 200
  "ok"
end
