
#GET list of all users
# (not needed now)
# get '/users' do
# end

# GET form to create new user
get '/users/new' do
# if logged in, go to user profile
  if logged_in?
    @user = current_user
    redirect "/users/#{@user.id}"
# otherwise show the form
  else
    erb :'users/new'
  end
end

# CREATE new user
post '/users' do
# create new user
  @user = User.new(params[:user])
  @user.password = params[:password]
# check if successful save
  if @user.save
    log_in
    # redirect to user profile
    redirect "users/#{session[:id]}"
# otherwise load error message, back to reg form
  else
# just-in-case logout, or not even needed?
    session.delete(:id)
    @error = @user.errors.full_messages
    erb :'users/new'
  end
end


# GET user profile by ID, and their stats
# Page will look different whether or not logged in
get '/users/:id' do
  # the user being looked at
  @user_being_viewed = User.find(params[:id])
  # go to user info erb
  erb :'users/show'
end

# GET form to update specific user
get '/users/:id/edit' do
  @user = User.find(params[:id])
  if logged_in? && @user.id == session[:id]
    erb :'/users/edit'
  else
    @error = "You don't have permission to edit this user"
    erb :'errror'
  end
end

# UPDATE user info via form
put '/users/:id' do
  user = User.find(params[:id])
  user.update(params[:user])
  user.password=(params[:password])
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






