class LinksController < ApplicationController

  def index
    @links = Link.all.order_by(created_at: :DESC)
    render :index
  end

  def new
  if @user
    # @user = User.create(email: params[@user])
    render :new
  else
    redirect_to :users_login_path
  end

  end

  def create
    @link = @user.links.create(destination: params[:destination],
                              title: params[:title],
                              created_at: DateTime.now)
    redirect_to :root
  end

end
