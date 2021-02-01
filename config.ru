# fichier qui contient les informations nécessaires au lancement de notre serveur. 
#Exécute la commande $ rackup, ce qui devrait lancer le serveur.
# $ rackup -p 4567 pour rester sur le port de sinatra

require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'


run ApplicationController