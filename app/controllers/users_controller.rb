class UsersController < ApplicationController
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,                only: [:edit, :update]
  before_action :admin_user,                  only: :destroy
  before_action :redirect_for_signed_in_user, only: [:new, :create]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.admin?
      redirect_to root_url
    else
      user.destroy
      flash[:success] = "User destroyed."
      redirect_to users_url
    end
  end

  def following
    before_follow
  end

  def followers
    before_follow
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def before_follow
      @user = User.find(params[:id])
      @title = caller.first.split(' ')[1].delete('`').delete("'").capitalize
      if @title == "Following"
        @users = @user.followed_users.paginate(page: params[:page])
      else
        @users = @user.followers.paginate(page: params[:page])
      end
      render 'show_follow'
    end

    # Before actions

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

    def redirect_for_signed_in_user
      redirect_to(root_path) if signed_in?
    end
end