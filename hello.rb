# frozen_string_literal: true

require 'sinatra'

NAME = 'Dolly'

def get_greeting(language, name)
  greeting = File.read("greetings/#{language}.txt")
  "#{greeting} #{name}!"
rescue Errno::ENOENT
  nil
end

get '/hello' do
  "<h1>#{get_greeting('en_US', NAME)}</h1>"
end

get '/bonjour' do
  "<h1>#{get_greeting('fr_FR', NAME)}</h1>"
end

get '/servus' do
  "<h1>#{get_greeting('de_BY', NAME)}</h1>"
end

get '/' do
  erb :welcome
end
