# Not all of these will be needed
#Un-comment as needed


# # GET / View all games
# get '/games' do
# end

# GET / display form to create new Game
get '/games/new' do
  erb :'games/new'
end

# # POST / create new Game from form
post '/games' do
  # define the new Game
  # game = Game.create
  # load its Track/s
# redirect to

end

# # GET / View a single Game
# get '/games/:id' do
# end

# # GET / return form to update a Game
# # only allowed id logged in as creator of Game
# get '/games/:id/edit' do

# end

# # PUT / use form results to update a Game
# put '/games/:id' do

# # redirect to that same Game
# end

# # DELETE a Game
# delete '/games/:id' do

# # redirect to index

# end
