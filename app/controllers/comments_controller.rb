class CommentsController < ApplicationController

    def creeate
        @post = Post.find(params[:id])
        @comment = @post.comments.create(params[:comment]).permit(:name, :comment))
        redirect_to post_path(@post)
    end

    def destroy

    end

end
