get '/' do

    erb :default

  # Where to redirect instead?

end

# secret path to see the session
get '/session-viewer' do
  session.inspect
end
