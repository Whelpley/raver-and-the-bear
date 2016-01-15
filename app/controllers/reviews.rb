
# GET / View all reviews
 # NOT NEEDED
get '/reviews' do
end

# GET / display form to create new Review
get '/reviews/:new' do

end

# POST / create new Review from form
post '/reviews' do

# redirect to

end

# GET / View a single Review
 # NOT NEEDED
get '/reviews/:id' do
end

# GET / return form to update a Review
# only allowed id logged in as creator of Review
get '/reviews/:id/edit' do

end

# PUT / use form results to update a Review
put '/reviews/:id' do

# redirect to that same Review
end

# DELETE a Review
delete '/reviews/:id' do

# redirect to index

end
