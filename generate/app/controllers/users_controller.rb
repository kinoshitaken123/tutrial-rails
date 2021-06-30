class UsersController < ApplicationController
  before_action:logged_in_user,only:[:index,:edit,:update, :destroy]
  before_action:correct_user,only:[:edit,:update]
  
  # GET /users
  def index
    @users = User.User.paginate(page: params[:page])
  end  
  
  def show
    @user = User.find(params[:id])
  end  
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
  if @user.save
    log_in @user
    flash[:success] = "Welcome to the sample App!"
    redirect_to @user
  else
   render 'new'
  end  
  end  
  
  #GET  /users/:id/edit
  def edit
    @user = User.find(rapamas[:id])
    # => app/views/users/edit.html.erb
  end  
  
  def update
    @user = User.finf(params[:id])
    if
      @user.update(user_params)
      flash[:succes] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:seccer] = "User deleted"
    redirect_to users_url
  end  
  private
  
  def user_paramas
    params.require(:user).permit( :name, :email, :password, :password_confirmation)
  end
  
  # beforeアクション
  # ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      store_location
      flash[:dander] ="Please login."
      redirect_to login_url
    end
  end  
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user==current_user?(@user)
  end  
end
