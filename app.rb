require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i * params[:number].to_i
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @phrase = (params[:number].to_i).times {params[:phrase]}
  end

end
