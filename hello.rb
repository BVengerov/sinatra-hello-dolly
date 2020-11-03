require "sinatra"

get "/hello" do
  "<h1>Hello, Dolly!</h1>"
end

get "/bonjour" do
  "<h1>Bonjour, mademoiselle Dolly!</h1>"
end

get "/servus" do
  "<h1>Servus, Frau Dolly!</h1>"
end

get "/" do
  erb :welcome
end