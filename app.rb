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
    "#{@answer}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phr=params[:phrase]
    @num.times {puts"#{@phr}"}
  end

end
