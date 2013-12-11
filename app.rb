require 'bundler'
Bundler.require

class FormParty < Sinatra::Application

  get '/' do
    erb :index
  end

  get '/:form_type' do
    erb params[:form_type].to_sym
  end

  post '/:form_type' do
    erb :results
  end

end