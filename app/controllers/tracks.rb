# Not all of these will be needed

# GET / View all tracks
get '/tracks' do
end

# GET / display form to create new Track
get '/tracks/:new' do

end

# POST / create new Track from incoming form
post '/tracks' do

# redirect to

end

# GET / View a single Track
get '/tracks/:id' do
end

# GET / return form to update a Track
# CHECK - only logged-in creator may do
get '/tracks/:id/edit' do

end

# PUT / use form results to update a Track
# CHECK - only logged-in creator may do
put '/tracks/:id' do

# redirect to that same Track
end

# DELETE a Track
# CHECK - only logged-in creator may do
delete '/tracks/:id' do

# redirect to index

end
