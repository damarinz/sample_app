class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by_email(params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		# sign in and redirect to user show page
  		sign_in user
  		redirect_to user
  	else
  		# return error msg and rewrite signin_path
  		flash.now[:error] = 'invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
  	sign_out
  	redirect_to root_url
  end


end
