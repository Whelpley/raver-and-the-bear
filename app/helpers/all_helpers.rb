# First go at implementing Helpers - needs to be tested

helpers do

  def current_user
    @current_user ||= User.where(id: session[:id]).first if session[:id]
  end

  def logged_in?
    current_user.nil? == false
  end

# display timestamp with panache
# needs testing
  def long_form_date(timestamp)
    timestamp.strftime('%B %e, %Y')
  end

  def log_out
    session.delete(:id)
    redirect '/'
  end

end
