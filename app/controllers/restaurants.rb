
# GET / View all posts
get '/restaurants' do
  @restaurants = Restaurant.all
  erb :'restaurants/index'
end

# GET / display form to create new Restaurant
get '/restaurants/new' do
  erb :'restaurants/new'
end

# post / create new Restaurant from form
post '/restaurants' do
 # make the new object
  @restaurant = Restaurant.new(
    name: params[:name],
    cuisine: params[:cuisine],
    address: params[:address],
    city: params[:city],
    state: params[:state],
    zip: params[:zip]
    )
# check on save, redirect to home or back to form if error in saving
# redirect to
  if @restaurant.save
    redirect '/'
# otherwise load error message, back to form
  else
    @error_message = "Sorry, but that didn't work somehow."
    erb :'restaurants/new'
  end
end

# GET / View a single Restaurant (and its comments)
get '/restaurants/:id' do
  # @Restaurant = Restaurant.find(params[:id])
  # erb :'/restaurants/show'
end

# GET / return form to update a Restaurant
get '/restaurants/:id/edit' do
  # find the restaurant
  @restaurant = Restaurant.find(params[:id])
  # go to form (make the form)
  erb :'restaurants/update'
end

# PUT / use form results to update a Restaurant
put '/restaurants/:id' do

# redirect to
end

# DELETE  a Restaurant
delete '/restaurants/:id' do

# redirect to

end
