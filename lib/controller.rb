# require 'bundler'
# Bundler.require
require 'gossip'
require 'csv'
# Herite de toutes les fonctionnalités de base de Sinatra
class ApplicationController < Sinatra::Base
    

    get '/' do
        erb :index, locals: {gossips: Gossip.all}
    end

    get '/gossips/new/' do

        erb :new_gossip

    end

    post '/gossips/new/' do

        Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
        
    end

   

end