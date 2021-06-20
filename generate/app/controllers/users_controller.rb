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
    
  else
   render 'n'
  end  
  end  
  
  private
  
  def user_paramas
    paramas.require(:user).permit( :name, :email, :password, :password_confirmation)
  end
  
end
