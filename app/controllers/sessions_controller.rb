class SessionsController < ApplicationController
  
  def index
   
    session[:session_hello] ||= "hello there"
    cookies[:cookies_hello] ||= "i am having fun"
    render json: { session: session, cookies: cookies.to_hash }
    byebug
  end

end
