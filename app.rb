require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @answer=@user_name.reverse
    @answer
  end

  get "/say/:number" do
    @num = params[:number].to_i
    @answer=@user_name.reverse
  end

end
