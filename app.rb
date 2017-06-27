require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    "Goodbye, #{params[:name]}."
  end

  get '/multiply/:number1/:number2' do
    num1 = params[:number1]
    num2 = params[:number2]
    "#{num1.to_i * num2.to_i}"
  end

end
