#registration
get '/users/new' do
	erb :'users/new', layout: false
end

post '/users' do
	if params[:password] == params[:password_confirm]
		user = User.new(email: 	 params[:email],
										password: params[:password])
		if user.save
			session[:id] = user.id
		end
	end
	redirect "/"
end
