get '/questions' do
  @questions = Question.all
  erb :index
end

get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do
end

get 'questions/:id' do
  erb :'questions/show'
end

