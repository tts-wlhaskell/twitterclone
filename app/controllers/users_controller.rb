class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @weather = HTTParty.get("http://api.wunderground.com/api/#{ENV['wunderground_key']}/conditions/q/#{@user.location}.json")
  end
end
