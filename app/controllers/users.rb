
#GET list of all users
# not needed
get '/users' do
end

# GET form to create new user
get '/users/new' do
# # if logged in, go to user profile
#   if session[:id]
#     @user = User.find(session[:id])
#     redirect "/users/#{@user.id}"
# # otherwise show the form
#   else
#     erb :'users/new'
#   end
end

# CREATE new user
# coming here from incoming form on erb :users/new
post '/users' do
# create new user
# not bothering with password encrytion for now
#   @user = User.new(email: params[:email], password: params[:password])
# # check if successful save
#   if @user.save
#     # Log in new user
#     session[:id] = @user.id
#     # redirect to user profile
#     redirect '/'
# # otherwise load error message, back to reg form
#   else
#     session.delete(:id)
#     @error_message = "Sorry, but that email has already been taken."
#     erb :'users/new'
#   end
end


#GET user ID profile
get '/users/:id' do
  # # the user who is logged in
  # @logged_in_as = User.find(session[:id]) if session[:id]
  # # the user being looked at
  # @user = User.find(params[:id])

  # # go to user info erb
  # erb :'/users/profile'

# ADVANCED - check if viewing own page, then show editing options
#   if @logged_in_as && @logged_in_as.id == @user.id
#     # Go to own profile edit page
#     # erb ......
#   else
#     # Go to standard view page
#     erb :'/users/profile'
#   end

end

# GET form to update specific user
# only allowed if logged in as user
get '/users/:id/edit' do
end

# UPDATE user from form in above
put '/users/:id' do
end

# DELETE a user
# also logs out
# only allowed if logged in as user
# other constraints?
delete 'users/:id' do
end

#EDIT


# View all comments by a user
# need to write this erb
get '/users/:id/comments' do
  # @user = User.find(params[:id])
  # erb :'/users/comments'
end

# View all posts by a user
# need to write this erb

get '/users/:id/posts' do
  # @user = User.find(params[:id])
  # erb :'/users/posts'
end






