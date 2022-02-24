get '/' do
  cars = all_cars()
  erb :'cars/index', locals: {
    cars: cars, 
  }
end
get '/cars/new' do 
  user_id = params['user_id']
  erb :'cars/new', locals: {
    user_id: user_id
  }
end

post '/car' do
  brand = params['brand']
  model = params['model']
  year = params['year']
  user_id = params['user_id']
  add_car(brand, model, year, user_id)
  redirect "/user/#{user_id}/cars"
end

get '/cars/:id/edit' do
  
  id = params['id']
  car = get_car(id)
  erb :'cars/edit', locals: {
    car_id: id,
    car: car
  }
end

put '/update/:id' do
  user_id = session["user_id"]
  id = params['id']
  brand = params['brand']
  model = params['model']
  year = params['year']
  update_car(id, brand, model, year)
  redirect "/user/#{user_id}/cars"
end

delete '/delete/:id' do
  user_id = session["user_id"]
  id = params['id']
  delete_car(id)
  redirect "/user/#{user_id}/cars"
end
# car_pic = HTTParty.get("http://www.carimagery.com/api.asmx/GetImageUrl?searchTerm=ford+fiesta").parsed_response 
# car_pic: car_pic['string']["__content__"]
# search_term = #{'brand'}+#{'model'}+#{year}
