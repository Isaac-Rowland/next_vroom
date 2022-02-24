get '/login' do
  erb :'sessions/new'
end


post '/sessions' do
  email = params['email']
  password = params['password']
  user = find_user_by_email(email)
  if user && BCrypt::Password.new(user['password_digest']) == params['password']
    session['user_id'] = user['id']

    redirect "/user/#{user['id']}/cars"
  else
    redirect '/sessions/not_found'
  end
end

get '/sessions/not_found' do
  erb :'sessions/not_found'
end

delete '/sessions' do 
  session['user_id'] = nil
  redirect '/'
end

