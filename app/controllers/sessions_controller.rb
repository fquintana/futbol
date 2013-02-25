class SessionsController < ApplicationController
  
  def new
  
  end

  def create
    auth_hash = request.env['omniauth.auth']
    @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if @authorization
	  session[:user_id] = @authorization.user.id
	  redirect_to canchas_path, :notice => "Welcome back #{@authorization.user.name}!"
    else
      user = User.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
      user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
      user.save
	  session[:user_id] = user.id
	  redirect_to canchas_path, :notice => "Hi #{user.name}! You've signed up."
    end
  end
  
  def failure
    render :text => "Sorry, but you didn't allow access to our app!"
  end
  
  def destroy
    session[:user_id] = nil
	redirect_to canchas_path, :notice => "You've logged out!"
  end

end
