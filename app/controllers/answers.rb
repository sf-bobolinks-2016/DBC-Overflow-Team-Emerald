post '/answers' do
  p params
  answer = Answer.create(answer: params[:answer], user_id: session[:user_id],question_id: params[:question_id]
    )
  redirect "/questions/#{params[:question_id]}"
end
