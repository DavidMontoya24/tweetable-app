class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show new edit update destroy]

  def index
    @comments = Comment.all
  end

  def new; end

  def create
    p @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to "/tweets/#{comment_params[:tweet_id]}", notice: "Comment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def show; end

  def update
    if @comment.update(comment_params)
      redirect_to "/tweets/#{@comment.tweet.id}", notice: "Comment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @comment.destroy
    redirect_to "/tweets/#{@comment.tweet.id}", status: :see_other, notice: "Comment was successfully deleted."
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :user, :tweet_id)
  end
end
