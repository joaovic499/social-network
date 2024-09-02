class PostsController < ApplicationController
  def create
    @register = User.find(params[:user_id])
    @posts = @register.title.create(posts_params)
    redirect_to article_path(@register)
end 

private def post_params
    params.require(:posts).permit(:title, :body)
end

end