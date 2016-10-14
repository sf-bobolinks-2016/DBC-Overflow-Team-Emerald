get '/questions' do
  @questions = Question.all
  erb :index
end

get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do

 @question = Question.create(title: params[:title], question:params[:body])
redirect '/questions'
end

get '/questions/:id' do

  @question = Question.find(params[:id])
  @answers = @question.answers
  erb :'questions/show'
end

