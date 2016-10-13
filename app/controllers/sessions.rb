# SERVER (Shotgun/sinatra/thin)<---------->

get '/sessions/new' do
  redirect '/'
end

 # Take's user's input from login form and creates a new session (by adding a key/value pair to the session hash)

post '/sessions' do
  user = User.find_by(email: params[:email])

  if user && User.authenticate(user.email, params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = "Email and Password not found. Please try again."
    # redirect '/sessions/new'
    erb :welcome
  end
end

# Logs the user out
# This is technically supposed to be a "delete" route in Sinatra, but routing an 'a' tag to a delete requires Javascript that we don't know yet.
get '/sessions/delete' do
  session.clear
  # session[:user_id] = nil
  redirect '/'
end
