class LikesController < ApplicationController
    def create
        like = current_user.likes.build(tweet_id: params[:tweet_id])
        if like.save
            redirect_to tweet_path(id: params[:tweet_id]), notice: "You liked this Tweet!"
        else
            redirect_to tweets_path, notice: "You could not like that Tweet"
        end
    end
    
    def destroy
        like = Like.find(params[:id])
        like.destroy
        redirect_to tweets_path, notice: "Unliked"
    end
end
