class UsersController < ApplicationController

  def index
    @users = policy_scope(User)
    @users = User.all
    authorize @users
    @reviews = Review.all
  end

  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    @proposals = @user.proposals
    authorize @user
  end
end
