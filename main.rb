     
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'bcrypt'
require_relative 'db/db'
require 'httparty'

enable :sessions

require_relative 'models/cars'
require_relative 'models/user'

require_relative 'controllers/car_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/sessions_controller'

require_relative 'helpers/sessions_helper'