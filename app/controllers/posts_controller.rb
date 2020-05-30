class PostsController < ApplicationController
    before_action :normalization #herokuUrl正規化
  def index
  end

  def show
      #-----サイドバー変数
      @postdatas=Post.all.order(updated_at:"DESC")
      @categorydatas=Category.all
      #------------------------
      @postdata=Post.find_by(key: params[:id])
      @e=Coment.new
      @coments=Coment.where(key:params[:id])
      if !@postdata then
          render file: "/public/404.html", layout: false, status: 404
      else

      end
  end
  def create
      
      k=Post.find_by(key:params[:id])
      c=Coment.new(params_coment)
      if c.save then
          flash[:success] = "コメントしました"
      else
          flash[:danger] = "コメントできません"
      end
      redirect_to '/article/'+k.key
  end
  private
  def params_coment
      params.require(:coment).permit(:name,:coment,:key)
  end
end
