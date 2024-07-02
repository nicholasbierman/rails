class CommentsController < ApplicationController

  def find_parent_article
    @article = Article.find(params[:article_id])
  end

  def create
    @comments = find_parent_article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @comment = find_parent_article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
