require "sinatra"

set :port, ENV.fetch("PORT", 3000)
set :bind, "0.0.0.0"
set :host_authorization, permitted_hosts: [".railway.app", "localhost"]

get "/" do
  erb :index
end

get "/add" do
  erb :add
end

post "/add" do
  @a = params[:a].to_f
  @b = params[:b].to_f
  @result = @a + @b
  erb :add
end

get "/healthz" do
  status 200
  "ok"
end
