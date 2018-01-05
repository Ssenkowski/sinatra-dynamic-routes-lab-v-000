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
    @times = params[:number].to_i
    @phrase = params[:phrase]
    "#{@times}.times{#{@phrase}}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    "#{@num1}#{@operation}#{@num2}"
  end

end
