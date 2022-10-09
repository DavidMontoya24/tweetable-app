class Api::TweetsController < ApiController
  def index 
    @tweets = Tweet.all 
    render json: @tweets, status: :ok
  end

  def show
    @tweet = Tweet.find(params[:id])
    render json: @tweet, status: :ok
  end

  # private

  # def genre_params
  #   params.permit(:body, :user)
  # end
end