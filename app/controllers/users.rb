
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
    @error = @user.errors.full_messages
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
# only allowed if logged in as user - is this the right way to filter?
get '/users/:id/edit' do
  @user = User.find(params[:id])
  if @user.id == session[:id]
    erb :'/users/edit'
  else
    @error = "You don't have permission to edit this user"
    # needs better redirect
    redirect '/'
  end
end

# UPDATE user from form in above
put '/users/:id' do
  user = User.find(params[:id])
  user.update(params[:user])
  # need to test if this works!
  user.password=(params[:password])
  # check for success
  if user.save
    # this won't work - how to send confirmation message?
    @message = "successful edit!"
    redirect "/users/#{user.id}"
  else
    @error = "failed save! " + user.errors.full_messages
    erb :'/users/edit'
  end
end


# Extra route: get view to confirm user password before deleting account
get '/users/:id/delete' do
  @user = User.find(params[:id])
  # puts @user.name + " is cool"
  erb :'users/help_line'
end

# DELETE a user (and log out)
# only allowed if logged in as user & correct password sent from form
delete '/users/:id' do
  @user = User.find(params[:id])
  if @user.id == session[:id] && @user.authenticate(params[:password])
    @user.destroy
    log_out
  else
    @error = "Oh no! Something went wrong!"
    erb :'users/help_line'
  end
end

#EDIT






