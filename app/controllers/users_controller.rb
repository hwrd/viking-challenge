class UsersController < ApplicationController

  def index
    @users = User.leaderboard
  end
end