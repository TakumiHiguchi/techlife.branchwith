class EditpostController < ApplicationController
    before_action :normalization #herokuUrl正規化
    before_action :certification #aduser認証
  def index
      @postdatas=Post.all.order(created_at:"DESC")
  end

  def new
    @e=Post.new
    @e.post_category_relations.build
  end

  def create
    article = Post.new(params_post)
    
    o = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map { |i| i.to_a }.flatten
    a =(0...20).map { o[rand(o.length)] }.join
    article.key= a
    
    redirect_to '/' if article.save
  end

  def edit
    @e=Post.find_by(id:params[:id])
  end

  def update
    article = Post.find_by(id:params[:id])
    article.update(params_post)
    redirect_to '/' if article.save
  end

  def destroy
  end
  
  private
      def params_post
          params.require(:post).permit(:title,:thumbnail_path,:content,:key,:author_key,:pickup_content,{ :category_ids=> [] })
      end
  
  
end
