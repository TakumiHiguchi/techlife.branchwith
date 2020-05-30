class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  $url_at='https://hiiragi000.xsrv.jp/images'
  

  
  before_action :current_user
  helper_method :signed_in?
  def current_user
     remember_token = Adminuser.encrypt(cookies[:user_remember_token])
     @current_user ||= Adminuser.find_by(token: remember_token)
   end

   def sign_in(user)
     remember_token = Adminuser.new_remember_token
     cookies.permanent[:user_remember_token] = remember_token
     Adminuser.update(token: Adminuser.encrypt(remember_token))
     @current_user = user
   end

   def sign_out
     @current_user = nil
     cookies.delete(:user_remember_token)
   end
   def signed_in?
       @current_user.present?
   end
   def certification
       #認証作業
       redirect_to '/' if !signed_in?
   end
   def normalization
       #url正規化
       url = request.domain
       path=request.fullpath
       if url =='herokuapp.com' then
           redirect_to('https://techlife.branchwith.com'+path.to_s)and return
       end
   end
end

