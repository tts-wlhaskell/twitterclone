class TweetsController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @tweets = Tweet.last(16)
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new 
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    
    if @tweet.save
      redirect_to @tweet, notice: "Tweet was successfully created."
    else
      render :new, notice: "Tweet could not be created"
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
 
    if @tweet.save
      redirect_to @tweet, notice: "Tweet was successfully updated."
    else
      render :edit, notice: "Tweet could not be updated"
    end
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy 
    
    redirect_to root_path, notice: "Tweet has been removed"
  end
  
  private 
    def tweet_params
      params.require(:tweet).permit(:message, :user_id)
    end
end
