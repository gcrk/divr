class UsersController < ApplicationController
  
  def index
    # NYI access for Admin
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
      if @user.save
        redirect_to root_path
      else
        render :new
      end
  end

  def edit
    # NYI access for Admin
  end

  def show
    @current_user.users.find params[:id]
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :pro, :password, :password_confirmation)
    end

end
