require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require 'nokogiri'
require 'nori'
require 'open-uri'
require 'oauth'

# connec to db (needed?)
require_relative 'config/connection.rb'
# load specific routes
require_relative 'controllers/results_controller'
require_relative 'controllers/users_controller'
# load models

# root to home
get '/' do
  erb :index
end
