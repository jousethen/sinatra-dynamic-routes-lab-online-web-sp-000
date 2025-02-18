require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do 
    params[:name].reverse
  end

  get "/square/:number" do 
    @number = params[:number].to_i
    @square = @number * @number
    @square.to_s
  end

  get "/say/:number/:phrase" do 
    params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do 
    @result = ""
    case params[:operation]
      when "add"
          @result = params[:number1].to_i + params[:number2].to_i
      when "subtract"
          @result = params[:number2].to_i - params[:number1].to_i
      when "multiply"
          @result = params[:number1].to_i * params[:number2].to_i
      when "divide"
          @result = params[:number1].to_i / params[:number2].to_i
    end

    @result.to_s
  end
end