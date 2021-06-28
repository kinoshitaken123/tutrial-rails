class UsersController < ApplicationController
  
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
  
  private
  
  def user_paramas
    params.require(:user).permit( :name, :email, :password, :password_confirmation)
  end
  
end
