class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(:email => params[:session][:email].downcase)
 
  if user!=nil && user.authenticate(params[:session][:password])
    #sign in redirect to user home/show page
    sign_in user
    redirect_to articles_path 
  else
    flash[:message] = 'Email ID or password entered is wrong'
    redirect_to root_url
  end
end

def destroy
  sign_out
  redirect_to root_url
end

end
