class FeedController < ApplicationController
  before_action :authenticate_user! 
  def show
    # user = User.find_by(username: params[:username])
    # Follow.create(followable: user, follower: current_user)
    # redirect_to user_path(user.username), notice: "User Followed Successfully"
    @tweets = Tweet.where(user: current_user.all_following)
  end

end
