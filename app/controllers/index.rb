get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect} right here.</code>"
  response = params[:user_input]

  if params[:user_input] == "Sorry grandma, gotta go"
    @grandma = "wait, come back!"
    # erb :result
    redirect to('/?grandma='+@grandma)
  elsif params[:user_input] == response.upcase
    @grandma = "NOT SINCE 1938!"
    redirect to('/?grandma='+@grandma)
    # erb :index
  else 
    @grandma = "SPEAK UP, SONNY!"
    redirect to('/?grandma='+@grandma)
    # erb :index
  end
end
