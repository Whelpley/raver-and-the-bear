# USEFUL - comment back in once needed

# #GET form to log in
get '/sessions/new' do
  # If user already logged in, go to user profile
  if session[:id]
    # refactor to one line?
    @user = User.find(session[:id])
    redirect "/users/#{@user.id}"
    # Otherwise show form to log in (need to create this form)
  else
    erb :login
  end
end

# POST results from login form to log in user
# Incoming params - :email, :password_plaintext
post '/sessions' do
  @user = User.find_by email: params[:email]
  # this does not even check the password!
  # lets in if the email exists
  # gotta update this !!!!
  if @user
    session[:id] = @user.id
    # go to user's stats page
    redirect "/users/#{@user.id}"
  else
    # clear session just in case
    session.delete(:id)
    @error_message = "Please check your email address and password and try again."
    erb :login
  end
end

# # log out, return to home page
get '/logout' do
  session.delete(:id)
  redirect '/'
end
