<<<<<<< HEAD
def new
  @link = Link.create(link_id: params[:id])
  @all_comments = @link.comments.all
  render :new 
=======
class CommentsController < ApplicationController
  def new
  end
>>>>>>> 9c02ec09ab802ec898b3f26529b7ca20ff8787e9
end

def create
  @comment = Link.comments.create(content = params[:content],
                      user_id = user.id,
                      written_at = DateTime.now)

  redirect_to :root  
end

