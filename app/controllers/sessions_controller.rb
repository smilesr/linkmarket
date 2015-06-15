class SessionsController < ApplicationController

  def login
      @action = users_login_path
      render :login
  end

  def create
    @user = User.find_by(email: params[:email])
    passhash = Digest::SHA1.hexdigest(params[:password])

    if @user && @user.password == passhash
      session[:user_id] = @user.id
      redirect_to :root
    else
      flash[:error] = "No user found with that email and password."
      redirect_to users_new_path
    end

    # redirect_to :root
  end

  def destroy
    session.delete(:user_id)
  end

end
