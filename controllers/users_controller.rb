get '/sign_up' do
  erb :'users/new'
end

post '/users' do
  first_name = params["first_name"]
  last_name = params["last_name"]
  email = params["email"]
  password = params["password"]
  create_user(first_name, last_name, email, password)
  redirect '/'
end

get '/user/:id/cars' do
  user_id = params['id']
  # car_pic = HTTParty.get("http://www.carimagery.com/api.asmx/GetImageUrl?searchTerm=ford+fiesta").parsed_response
  cars = users_cars(user_id)
  # brand, model and year from each car to then get picture

  
  erb :'users/cars', locals: {
    cars: cars, 
    # car_pic: car_pic["string"]
  }
end