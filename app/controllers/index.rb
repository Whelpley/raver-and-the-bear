get '/' do
  # dummy fill-in for Yield
  if session[:id]
    redirect '/restaurants'
  else
    erb :derp
  end
end

