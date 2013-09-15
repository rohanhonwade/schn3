class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(:email => params[:session][:email].downcase)
 
  if user && user.authenticate(params[:session][:password])
    #sign in redirect to user home/show page
    flash[:message] = 'right page'
    sign_in user
    redirect_to articles_path 
  else
    flash[:message] = 'Email ID is not registered'
    redirect_to articles_path
  end
end

def destroy
end

end
