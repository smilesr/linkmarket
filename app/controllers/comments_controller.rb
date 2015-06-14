<<<<<<< HEAD



class CommentsController < ApplicationController
 def new
=======
class CommentsController < ApplicationController
def new
>>>>>>> index_view
  @link = Link.create(link_id: params[:id])
  @all_comments = @link.comments.all
  render :new 
  end
end

def create
  @comment = Link.comments.create(content = params[:content],
                      user_id = user.id,
<<<<<<< HEAD
                      written_at = DateTime.now)
=======
                      created_at = DateTime.now)

>>>>>>> index_view
  redirect_to :root  
end

