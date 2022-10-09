class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[show edit update destroy]

  def index
    @tweets = Tweet.all.order("created_at DESC")
    @tweet = Tweet.new
  end
  
  def new
    @tweet = Tweet.new
  end

  def show
    @tweet
    @comment = Comment.new(user: current_user, tweet: @tweet)
  end

  def edit
  end
  
  def create
    @tweet = current_user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to root_path, notice: "Tweet was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @tweet.destroy
    redirect_to root_path, notice: "Your tweet was successfully deleted"
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:body, :comments_count, :user)
  end
end
