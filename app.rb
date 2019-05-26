require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @answer=@user_name.reverse
    @answer
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @answer = @num * @num
    "@{answer}"
  end

  get "/multiply/:num1/:num2" do
    @number1 = params[:num1].to_i
    @number2 = params[:num2].to_i
    @number1*@number2
  end

end
