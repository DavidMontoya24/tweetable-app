require "rails_helper"

describe "Tweets", :type => :request do 
  describe "index path" do 
    it "respond with http sucess status code" do 
      get api_tweets_path
      expect(response).to have_http_status(:ok)
    end
  end
  
  describe "show path" do 
    it "respond with http sucess status code" do 
      user = User.create(name: "Bob", username: "Bob360", email: "test1@example.com", password: "123456")
      tweet = Tweet.create(body: "Body test of tweet!", user_id: user.id)
      get api_tweet_path(tweet)
      tweet_json = JSON.parse(response.body)
      expect(tweet.body).to eq(tweet_json["body"])
    end
  end
end