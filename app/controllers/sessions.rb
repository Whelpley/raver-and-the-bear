# USEFUL - comment back in once needed

# #GET form to log in
get '/sessions/new' do
  # If user already logged in, go to user profile
  if session[:id]
    # refactor with a helper!
    @user = User.find(session[:id])
    redirect "/users/#{@user.id}"
    # Otherwise show form to log in (need to create this form)
  else
    erb :login
  end
end

# POST results from login form start session
post '/sessions' do
  @user = User.find_by email: params[:email]
  if @user && @user.authenticate(params[:password])
    session[:id] = @user.id
    # go to user's stats page
    redirect "/users/#{@user.id}"
  else
    # clear session just in case
    session.delete(:id)
    # more specific error message?
    @error = "Login failed. Are you a failure? Try again!"
    # back to Login form
    erb :login
  end
end

# # log out, return to home page
get '/logout' do
  session.delete(:id)
  redirect '/'
end
