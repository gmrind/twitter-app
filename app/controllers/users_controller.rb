class UsersController < ApplicationController

	before_filter :authenticate_user!,	only: [:index, :following, :followers]
  
	def index
		@users = User.paginate(page: params[:page])
	end	

  def new
  end

  def show
  	@user = User.find(params[:id])
  	@microposts = @user.microposts.paginate(page: params[:page]).order(created_at: :desc)
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])    
    render 'show_follow'
  end
end
