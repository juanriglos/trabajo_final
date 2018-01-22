class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      if @user.role == 'admin'
        render 'home/indexadmin'
      else
      redirect_to home_index_path, notice: 'Login satisfactorio'
      # redirect_back_or_to(:root_path, notice: 'Login satisfactorio')
      end
    else
      flash.now[:alert] = 'Fallo Login'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to home_index_path, notice: 'Cerro Sesion!'
  end
end
