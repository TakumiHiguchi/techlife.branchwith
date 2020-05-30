class SessionsController < ApplicationController
    before_action :set_user, only: [:create]
    before_action :normalization #herokuUrl正規化
  def new
      
  end

  def create
      
    if @user.authenticate(session_params[:password])
      sign_in(@user)
      redirect_to "/"
    else
      flash.now[:danger] = t('.flash.invalid_password')
      render 'new'
    end
  end

  def destroy
      
    sign_out
    redirect_to "/"
  end

  private

    def set_user
      @user = Adminuser.find_by!(mail: session_params[:mail])
    rescue
      flash.now[:danger] = t('.flash.invalid_mail')
      render action: 'new'
    end

    # 許可するパラメータ
    def session_params
      params.require(:session).permit(:mail, :password)
    end
end
