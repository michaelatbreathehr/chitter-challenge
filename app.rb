require 'sinatra/base'
require './lib/peep'

class ChitterChallenge < Sinatra::Base


  get '/' do
    'Chitter'
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :peeps
  end

  run! if app_file == $0
end
