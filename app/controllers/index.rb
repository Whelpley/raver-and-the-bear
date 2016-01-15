get '/' do
# quick patch: clear session.id immediately
# where to do this properly
  session.delete(:id)


  # dummy fill-in for Yield
  # if session[:id]
  #   redirect '/restaurants'
  # else
    erb :derp
  # end

  # Where to redirect?
end

