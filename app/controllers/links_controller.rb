class LinksController < ApplicationController
  def index
    @links = Link.all.order(created_at: :DESC)
    # binding.pry
    render :index
  end
  def new
    if current_user
      # @user = User.create(email: params[@user])
      render :links
    else
      redirect_to users_login_path
    end
  end
  def create
    @link = Link.create(destination: params[:destination],
                              title: params[:title],
                              created_at: DateTime.now)
    redirect_to :root
  end

end
