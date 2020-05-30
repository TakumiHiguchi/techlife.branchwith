class FixedpageController < ApplicationController
    before_action :normalization #herokuUrl正規化
  def index
      
    @postdatas=Post.all.order(updated_at:"DESC")

    @cd=Category.where(parent_id:nil)
    @categorydatas=Category.all
    
    #カテゴリーのkeyを生成
    s=Category.all
    s.each do |pa|
        if pa.key.nil? then
            o = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map { |i| i.to_a }.flatten
            a =(0...20).map { o[rand(o.length)] }.join
            pa.key=a
            pa.save
        end
    end
    
  end

  def show
  end
  def category
      #-----サイドバー変数
      @postdatas=Post.all.order(updated_at:"DESC")
      @categorydatas=Category.all
      #------------------------
      @cad=Category.find_by(key:params[:id])
      @postdatas=Post.all.order(updated_at:"DESC")
  end
end
