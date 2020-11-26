class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @project = @user.projects
    @proposal = @user.proposals
    authorize @user
  end
end
