require 'sinatra/base'

class Thermostat < Sinatra::Base

  run! if app_file == $0
end
