
#GET list of all users
# not needed
get '/users' do
end

# GET form to create new user
get '/users/new' do
# if logged in, go to user profile
# refactor this to use helpers
  if session[:id]
    @user = User.find(session[:id])
    redirect "/users/#{@user.id}"
# otherwise show the form
  else
    erb :'users/new'
  end
end

# CREATE new user
# coming here from incoming form on erb :users/new
post '/users' do
# create new user
  @user = User.new(params[:user])
  @user.password = params[:password]
# check if successful save
  if @user.save
    # Log in new user
    session[:id] = @user.id
    # redirect to user profile
    redirect "users/#{session[:id]}"
# otherwise load error message, back to reg form
  else
    session.delete(:id)
# instead: access the Errors attribute of object for @errors
    @error = "Sorry, something went wrong. Try again, why not!"
    erb :'users/new'
  end
end


# GET user profile by ID, and their stats
# Page will look different whether or not logged in
get '/users/:id' do
  # # the user who is logged in
  @logged_in_as = User.find(session[:id]) if session[:id]
  # the user being looked at
  @now_viewing = User.find(params[:id])
  # go to user info erb
  erb :'users/show'

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






